module Main exposing (..)

import Html
import Svg exposing (..)
import Svg.Attributes exposing (..)

type alias Model =
  {}

w = 640
h = 480

view model =
  svg [ width <| toString w, height <| toString h]
    [ renderBackground
    , renderFileStorage
    , renderRadio
    , renderTypewriter
    , renderTelegraphKey
    , renderPinboard
    , renderManual
    ]

renderBackground =
  rect [ width <| toString w, height <| toString h, Svg.Attributes.style "fill: rgb(94, 54, 12)" ] []

renderFileStorage =
  g []
    [ image [ x "5", y <| toString (h * 0.4), width <| toString (w * 0.3), xlinkHref "resources/filestorage.svg" ] []
    ]

renderRadio =
  g []
    [ image [ x "20", y "20", width <| toString (w * 0.5), xlinkHref "resources/radio.svg" ] []
    ]

renderTypewriter =
  g []
    [ image [ x <| toString (w * 0.25), y <| toString (h * 0.5), width <| toString (w * 0.4), xlinkHref "resources/typewriter.svg" ] []
    ]

renderTelegraphKey =
  g []
    [ image [ x <| toString (w * 0.55), y <| toString (h * 0.4), width <| toString (w * 0.2), xlinkHref "resources/telegraphkey.png" ] []
    ]

renderPinboard =
  g []
    [ image [ x <| toString (w * 0.55), y "-60", width <| toString (w * 0.4), xlinkHref "resources/pinboard.svg" ] []
    ]

renderManual =
  g []
    [ image [ x <| toString (w * 0.7), y "150", width <| toString (w * 0.35), xlinkHref "resources/manual.svg" ] []
    ]

main = Html.program
  { init = (( Model, Cmd.none ))
  , update = (\msg model -> ( model, Cmd.none ))
  , view = view
  , subscriptions = (\_ -> Sub.none)
  }
