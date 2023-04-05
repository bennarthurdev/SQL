Select
no_municipio,
ma.v2,
count(ma.v4)
from "60_2022" ma
join "00_2022" e on e.v2::text = ma.v2
join "aux_municipio" m on m.co_municipio::text = e.v8

group by no_municipio, ma.v2

limit 20
