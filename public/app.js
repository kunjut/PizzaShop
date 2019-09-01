function something()
{
    var x = window.localStorage.getItem('zzz');
    x = x * 1 + 1;

    window.localStorage.setItem('zzz', x);

    alert(x);
}