function something()
{
    var x = window.localStorage.getItem('zzz'); // x = hh['zzz']
   
    x = x * 1 + 1;                              // x = x + 1

    window.localStorage.setItem('zzz', x);      // hh['zzz'] = x

    alert(x);
}

function add_to_cart(id)
{
    var key = 'product_' + id;

    var x = window.localStorage.getItem(key);
    x = x * 1 + 1;
    window.localStorage.setItem(key, x);
}

function check_basket() {

    var total = 0;

    for (var i = 0; i<localStorage.length; i++) {
    
        var key = localStorage.key(i);
        var z = localStorage.getItem(key);
        
        total = total + z*1
    }
    alert(total);
}