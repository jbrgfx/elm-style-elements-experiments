module Main exposing (..)

import Color exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events as Events
import Element.Font as Font


main =
    Element.layout
        [ Background.color white ]
    <|
        column
            []
            [ headerArea
            , mainColumns
                { left =
                    [ overview
                    , secondDropCap
                    ]
                , right =
                    [ firstDropCap
                    , myParagraph
                    ]
                }
            , footerArea
            ]


mainColumns { left, right } =
    row
        [ borderBottom 1
        , Border.color darkBlue
        ]
        [ column
            [ borderRight 1
            , Border.color darkBlue
            , paddingRight gutter
            ]
            left
        , column
            [ paddingLeft gutter ]
            right
        ]


gutter =
    30


colors =
    { white = Color.white
    , darkGrey = Color.grey
    , black = Color.black
    , lightGrey = Color.rgba 244 244 244 1
    , lighterGrey = Color.rgba 140 140 140 1
    , blue = Color.rgba 148 196 252 100
    , transparent = Color.rgba 255 255 255 0
    }


borderRight n =
    Border.widthEach { right = n, left = 0, top = 0, bottom = 0 }


borderBottom n =
    Border.widthEach { right = 0, left = 0, top = 0, bottom = n }


paddingRight n =
    paddingEach { right = n, left = 0, top = 0, bottom = 0 }


paddingTop pxs =
    paddingEach { bottom = 0, top = pxs, left = 0, right = 0 }


paddingBottom pxs =
    paddingEach { bottom = pxs, top = 0, left = 0, right = 0 }


paddingLeft n =
    paddingEach { right = 0, left = n, top = 0, bottom = 0 }


headerArea =
    row
        [ Background.color white
        , Font.color darkBlue
        , borderBottom 1
        , Border.color darkBlue
        ]
        [ elmlogo
        , newTabLink
            [ padding 20
            , Font.bold
            , Font.size 18
            , Font.underline
            , alignBottom
            ]
            { url = "http://package.elm-lang.org/packages/mdgriffith/stylish-elephants/3.0.2"
            , label = text "stylish-elephants: package docs"
            }
        ]


elmlogo =
    row []
        [ image
            [ width (px 180)
            , height (px 70)
            , alignLeft
            ]
            { description = "the Elm Language logo", src = "elm_logo.png" }
        ]


overview : Element msg
overview =
    paragraph
        [ alignTop
        , alignLeft
        , spacingXY 4 200
        , padding 20
        , Background.color white
        , width (px 420)
        , height (px 200)
        , Font.size 16
        , Font.color darkBlue
        ]
        [ paragraph
            []
            [ text "This 2-column design is derived from a repo by " ]
        , newTabLink [ Font.underline, Font.bold ]
            { url = "https://github.com/opsb/cv-elm"
            , label = text "opsb/cv-elm"
            }
        , paragraph [ height (px 20) ] []
        , paragraph [] [ text "Oliver Searle-Barnes, opsb, has an advanced demo of the stylish-elephants experimental packages. This example uses only a few of the available features that Oliver Searle-Barnes demonstrated. His work insprred this minor experiment." ]
        ]


myParagraph : Element msg
myParagraph =
    paragraph
        [ alignTop
        , alignLeft
        , spacingXY 4 200
        , padding 20
        , Background.color white
        , width (px 420)
        , height (px 100)
        , Font.size 16
        , Font.color darkBlue
        ]
        [ text "A plain text element inside a paragraph"
        , paragraph [ Font.bold ] [ text "Add a paragraph element assigning bold text" ]
        , el [ Font.italic, alignRight ] (text "λ Add an 'el' with alignRight & italic assigned to text")
        ]


firstDropCap =
    paragraph
        [ padding 20
        , alignTop
        ]
        [ el
            [ alignLeft
            , spacingXY 4 100
            , padding 10
            , Font.size 40
            , Font.lineHeight 1
            , Font.color darkBlue
            , Background.color white
            ]
            (text "T")
        , paragraph
            [ width (px 300)
            , Font.color black
            , Font.size 18
            ]
            [ text "his is a paragraph element using 'DropCap' for the first letter of the paragraph. This example uses a general refactoring approach by which what was a 'StyleSheet' definition in style-elements 4.2.1 is now defined in the experimental version on a parent element and what were 'variations' on the paragraph are defined on the child.  The experimental version is know as 'stylish-elephants.' In this example, an 'el' is the parent and the 'paragraph' is the child." ]
        ]


secondDropCap =
    paragraph
        [ padding 20
        , alignTop
        ]
        [ el
            [ alignLeft
            , spacingXY 4 100
            , padding 10
            , Font.size 40
            , Font.lineHeight 1
            , Font.color darkBlue
            , Background.color white
            ]
            (text "I")
        , paragraph
            [ width (px 300)
            , Font.color black
            , Font.size 18
            ]
            [ text " will use responsive design elements as soon as they have been added to the experiment version." ]
        ]


footerArea =
    row
        [ Font.color darkBlue
        , paddingTop 20
        ]
        [ newTabLink
            [ Font.bold
            , Font.underline
            , Font.size 16
            , centerY
            ]
            { url = "https://github.com/opsb/cv-elm"
            , label = text "Credit opsb/cv-elm for design of columns, borders and padding elements."
            }
        ]
