module Triangle exposing (..)

import Result exposing (..)


type Triangle
    = Isosceles
    | Scalene
    | Equilateral


identifyTriangle : Float -> Float -> Float -> Result String Triangle
identifyTriangle a b c =
    if (a == b && b == c) then
        Ok Equilateral
    else if (a == b || a == c || b == c) then
        Ok Isosceles
    else
        Ok Scalene


triangleKind : Float -> Float -> Float -> Result String Triangle
triangleKind a b c =
    if List.any ((>=) 0) [ a, b, c ] then
        Err "Invalid lengths"
    else if ((a + b < c) || (b + c < a) || (a + c < b)) then
        Err "Violates inequality"
    else
        identifyTriangle a b c
