<?php
 //список всех мастеров
 include('config.php');

 unset($main);
 $FILENAME = $front_html_path.'master_profile.html';

 $main = &addInCurrentSection($FILENAME);

 if (!$_GET['id'] >0 && !$_SESSION['user'] >0) header('Location:/');

 //добавили отзыв
 if ($_POST['review'] >0 ) {
      $about= htmlspecialchars ( addslashes ($_POST['about']));
      $r1 = new Select($db,"insert into review (id_user,id_what,type,date,about,pabl) values ($_SESSION[user],$_GET[id],2,".time().",'$about',0 )");
      $main->addfield('message','Ваш отзыв будет опубликован на сайте после просмотра модератором.');
 };

 $r = new Select($db,'select * from users where id="'.$_GET['id'].'" and is_master=1');
 if ($r->next_row()) {
         $r->addFields($main,$ar=array('id','email','fio','skipe','link','adress','tel','about','price','experience','grafic','watch'));

         add_user_avatar($main,$r);



         if ($r->result('is_free') >0) { $main->addfield('status','занят');  $main->addfield('bisy','_bisy');}
             else $main->addfield('status','свободен');
         if ($r->result('price') >0) {
                 $r1 = new Select($db,"select * from time where id=".$r->result('time'));
                 $r1->next_row();
                 $main->addfield('price','от '.$r->result('price').' руб./'.$r1->result('name'));
          }    else  $main->addfield('price','Цена договорная');
          if ($r->result('id_city')>0) {
             $r1 = new Select($db,"select * from city where id=".$r->result('id_city'));
             $r1->next_row();
             $main->addfield('city',$r1->result('name'));
          };


         $main->addfield('cnt_review',cnt_review($_GET['id'],2));

         //отзывы
         add_review($main,$_GET['id'],2);

         //ОТЗЫВ ПРАВА
         check_review_rights($main,$_SESSION['user'],2,$_GET['id']);
         //разделы
         add_user_types($main,$_GET['id']);


         //фотогалерея
         $ri = new Select($db,"select * from galery where id_user=$_GET[id] and pabl=1 order by id");
         if ($ri->num_rows() ==0) $main->addField('no_photo','');
         while ($ri->next_row()) {
             unset($sub);
             $sub = new outTree();
             $ri->addFields($sub,$ar=array('id','about'));
             $ri->addFieldsIMG($sub,$ar=array('image1'));
             $ri->addFieldsIMG($sub,$ar=array('image2'));
             if ($ri->result('pabl') >0 ) $sub->addfield('pabl','checked');
             $main->addField('photo',&$sub);
         };
         $r = new Select($db,'update users set watch=watch+1 where id="'.$_GET['id'].'"');
  } else header('Location: /error404');  
 ?>

