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

    update_orders_input();
}

function check_basket() {

    var total = 0;

    for (var i = 0; i<window.localStorage.length; i++) {
        // получаем ключ
        var key = window.localStorage.key(i);
        // получаем значение ключа, аналог в ruby x = hh[key]
        var z = window.localStorage.getItem(key);
        // проверим ключ по префиксу product_
        if(key.indexOf('product_') == 0) {
            total = total + z*1
        }
    }
    return total;
}

function update_orders_input() {
    // получаем строчку
    var orders = check_orders();
    // обращаемся к orders_input и устанавливаем значение
    $('#orders_input').val(orders);
}

function check_orders() {
    var orders = '';
    for (var i = 0; i < window.localStorage.length; i++) {
        var key = window.localStorage.key(i);
        var z = window.localStorage.getItem(key);
        if(key.indexOf('product_') == 0) {
            orders = orders + key + '=' + z + ',';  
        }
    }
    return orders;
}