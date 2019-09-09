let $begin := (doc("src/Stock")/stocks/stock)
return <results>
    { max ($begin/values/value/price)
    } </results>



