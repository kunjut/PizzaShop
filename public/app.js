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