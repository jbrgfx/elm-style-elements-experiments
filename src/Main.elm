module Main exposing (..)

import Color exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events as Events
import Element.Font as Font


main =
    Element.layout
        [ Background.color white
        , width (px 900)
        , paddingLeft gutter
        ]
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
                    ]
                }
            , footerArea
            ]



{- credit: https://github.com/opsb/cv-elm/blob/master/src/Main.elm -}


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



{- credit: https://github.com/opsb/cv-elm/blob/master/src/Atom.elm -}


gutter =
    20



{- credit: https://github.com/opsb/cv-elm/blob/master/src/Extra/Element.elm -}


borderRight n =
    Border.widthEach { right = n, left = 0, top = 0, bottom = 0 }


borderBottom n =
    Border.widthEach { right = 0, left = 0, top = 0, bottom = n }



{- credit: https://github.com/opsb/cv-elm/blob/master/src/Extra/Element.elm -}


paddingRight n =
    paddingEach { right = n, left = 0, top = 0, bottom = 0 }


paddingTop pxs =
    paddingEach { bottom = 0, top = pxs, left = 0, right = 0 }



{- credit: https://github.com/opsb/cv-elm/blob/master/src/Extra/Element.elm -}


paddingBottom pxs =
    paddingEach { bottom = pxs, top = 0, left = 0, right = 0 }



{- credit: https://github.com/opsb/cv-elm/blob/master/src/Extra/Element.elm -}


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
            [ padding gutter
            , Font.bold
            , Font.size 18
            , Font.underline
            , alignBottom
            ]
            { url = "http://package.elm-lang.org/packages/mdgriffith/stylish-elephants/latest/"
            , label = text "stylish-elephants latest: package docs"
            }
        ]


elmlogo =
    row []
        [ image
            [ width (px 180)
            , height (px 73)
            , alignLeft
            ]
            { description = "the Elm Language logo", src = "elm_logo_small.png" }
        ]


overview : Element msg
overview =
    paragraph
        [ alignTop
        , alignLeft
        , paddingTop 20
        , padding gutter
        , Background.color white
        , width (px 420)
        , height (px 200)
        , Font.size 16
        , Font.color darkBlue
        ]
        [ text "This 2-column design was inspired by a repo maintained by Oliver Searle-Barnes, opsb. Oliver has an advanced demo of the stylish-elephants experimental packages. The features inspired by opsb/cv are marked with comments in the source code. This example uses only a few of the available features that Oliver Searle-Barnes demonstrated. His work insprred this minor experiment." ]


firstDropCap =
    paragraph
        [ padding gutter
        , alignTop
        ]
        [ el
            [ alignLeft
            , spacingXY 4 100
            , padding 10
            , Font.size 40
            , Font.lineHeight 0.5
            , Font.color darkBlue
            , Background.color white
            ]
            (text "T")
        , paragraph
            [ width (px 300)
            , Font.color black
            , Font.size 18
            ]
            [ text "his is a paragraph element using 'DropCap' for the first letter of the paragraph. This example uses a general refactoring approach by which what was a 'StyleSheet' definition in style-elements 4.2.1 is now defined in the experimental version on a parent element and what were 'variations' on the paragraph are defined on the child.  The experimental version is know as 'stylish-elephants.' In this example, an 'el' is the parent and the 'paragraph' is the child.  This technique still works after upgrading to stylish-elephants 6.0.2, but it appears unnecessary in many cases.  The package is getting easier and easier to use as the developer makes changes.  Version 6.0.2 has removed even more pain points than version 5.x." ]
        ]


secondDropCap =
    paragraph
        [ padding 40
        , alignTop
        ]
        [ el
            [ alignLeft
            , alignBottom
            , spacingXY 4 100
            , padding 10
            , Font.size 40
            , Font.lineHeight 0.5
            , Font.color darkBlue
            , Background.color white
            ]
            (text "F")
        , paragraph
            [ width (px 300)
            , Font.color black
            , Font.size 16
            ]
            [ text "or the time being, the layout width is static in this example. " ]
        , newTabLink
            [ Font.bold
            , Font.underline
            , Font.size 14
            , Font.color Color.darkBlue
            ]
            { url = "https://github.com/jbrgfx/responsive-stylish-elephants"
            , label = text "A responsive layout experiment has been begun."
            }

        -- ]
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
