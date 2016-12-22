module Leap exposing (..)


isDivBy : Int -> Int -> Bool
isDivBy dividend divisor =
    rem dividend divisor == 0


isLeapYear : Int -> Bool
isLeapYear year =
    case ( isDivBy year 4, isDivBy year 100, isDivBy year 400 ) of
        ( True, True, True ) ->
            True

        ( True, True, False ) ->
            False

        ( True, False, False ) ->
            True

        ( True, False, True ) ->
            True

        ( False, _, _ ) ->
            False
