module Bob exposing (hey)

import Char
import Regex exposing (contains)
import String


type Message
    = Silent
    | Normal
    | Shouty
    | Interrogative


detectMsgType : String -> Message
detectMsgType msg =
    let
        hasAlpha =
            Regex.contains (Regex.regex "[A-Za-z]") msg
    in
        if String.toUpper msg == msg && hasAlpha then
            Shouty
        else if String.endsWith "?" msg then
            Interrogative
        else if String.isEmpty (String.trim msg) then
            Silent
        else
            Normal


hey : String -> String
hey message =
    let
        msgType =
            detectMsgType message
    in
        case msgType of
            Silent ->
                "Fine. Be that way!"

            Normal ->
                "Whatever."

            Interrogative ->
                "Sure."

            Shouty ->
                "Whoa, chill out!"
