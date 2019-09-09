let $begin := (doc("src/Stock")/stocks)
return <results>
    {
        for $st in $begin/stock
        where $st/values/value/price > 140
        return <comp> { $st/company, $st/values/value/price } </comp>
    }
    </results>

