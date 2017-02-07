module Pangram exposing (..)


isPangram phrase =
    let
        alphabet =
            (String.split "" "abcdefghijklmnopqrstuvwxyz")

        phraseLower =
            String.toLower phrase
    in
        List.all (\s -> String.contains s phraseLower) alphabet
