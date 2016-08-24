
function submit_forms(formid)
  {

     var form = document.getElementById(formid);
     //alert(form);
     form.submit();
  }

  function license(obj)
  {
    // var lic = document.getElementById('lic');
     var but = document.getElementById('regbut');
     if (obj.checked ) {
            // lic.style.display='block';
             but.className = 'btn-yes';

      } else  {
           // lic.style.display='none';
            but.className = 'btn-no';
      };
  }

  function go_register()
  {
     var lic = document.getElementById('lic_ch');
     var fl = lic.checked;

     if (fl == true) {submit_forms('reg');};
      //else  lic.style.display='none';
  }


   function license1(obj)
  {
     var lic = document.getElementById('lic1');
     var but = document.getElementById('regbut1');
     if (obj.checked ) {
             lic.style.display='block';
             but.className = 'btn-yes';

      } else  {
            lic.style.display='none';
            but.className = 'btn-no';
      };
  }

  function go_register1()
  {
     var lic = document.getElementById('lic1');

     if (lic.style.display=='block') submit_forms('reg1');
      //else  lic.style.display='none';
  }