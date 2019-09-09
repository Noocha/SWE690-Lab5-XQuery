for $comp in (doc("src/Stock")/stocks/stock)
let $v := $comp/values/value/price
return <comp> { $comp/company/abbreviation,
                <maxPrice> { max($v) }</maxPrice> }
</comp>
