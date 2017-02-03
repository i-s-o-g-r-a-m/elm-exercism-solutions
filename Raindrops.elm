module Raindrops exposing (..)


isDivBy : Int -> Int -> Bool
isDivBy dividend divisor =
    rem dividend divisor == 0


div3 : Int -> Maybe String
div3 n =
    if (isDivBy n 3) then
        Just "Pling"
    else
        Nothing


div5 : Int -> Maybe String
div5 n =
    if (isDivBy n 5) then
        Just "Plang"
    else
        Nothing


div7 : Int -> Maybe String
div7 n =
    if (isDivBy n 7) then
        Just "Plong"
    else
        Nothing


raindrops : Int -> String
raindrops n =
    let
        results =
            List.filterMap (\f -> f n) [ div3, div5, div7 ]
    in
        if (List.isEmpty results) then
            toString n
        else
            String.join "" results
