module Anagram exposing (..)

import String exposing (join, split, toLower)


lexicoSorted : String -> String
lexicoSorted s =
    join "" (List.sort (split "" (toLower s)))


isAnagram : String -> String -> Maybe String
isAnagram baseWord candidate =
    let
        baseWordLex =
            lexicoSorted baseWord

        candidateLex =
            lexicoSorted candidate

        foundAnagram =
            baseWordLex == candidateLex

        isSameWord =
            toLower baseWord == toLower candidate
    in
        if foundAnagram && not isSameWord then
            Just candidate
        else
            Nothing


detect : String -> List String -> List String
detect baseWord choices =
    List.filterMap (isAnagram baseWord) choices
