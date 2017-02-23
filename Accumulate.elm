module Accumulate exposing (..)

import Maybe exposing (withDefault)


-- I guess folks like the head::tail destructuring, but I'm gonna stick with this


accumulate f seq =
    case (List.head seq) of
        Just val ->
            (f val) :: (accumulate f (withDefault [] (List.tail seq)))

        Nothing ->
            []
