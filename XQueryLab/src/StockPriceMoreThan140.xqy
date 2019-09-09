let $begin := (doc("src/Stock")/stocks)
return <results>
    {
        for $st in $begin/stock
        return <comp> { $st/company,
        for $v in $st/values/value
        where $v/price > 140
        return <valueAt> { $v/date, $v/price } </valueAt>
        } </comp>
    }
</results>


(:let $begin := (doc("src/Stock")/stocks):)
(:return <results>:)
(:{:)
(:for $st in $begin/stock,:)
(:$v in $st/values/value/price:)
(:where  $v > 140:)
(:return <comp> { $st/company, $v } </comp>:)
(:}:)
(:</results>:)

