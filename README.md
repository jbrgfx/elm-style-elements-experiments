# style-elements experiment in Elm

Exercise in upgrading 4.2.1 style-elements package in Elm to the new experimental package.
# Demo
(stylish-elephants-experiments)[https://jbrgfx.github.io/elm-style-elements-experiments/]

This experiment is a refactoring exercise of [style-elements](http://package.elm-lang.org/packages/mdgriffith/style-elements/4.2.1/Style) for Elm, v4.2.1 to the next version of the package.
Matthew Griffith is actively working on the next version.
This project is now using the latest version of the experimental package -- that is, version 4.0.0.
The latest stylish-elephants may be [read at elm-package](http://package.elm-lang.org/packages/mdgriffith/stylish-elephants/latest/).

The new version eliminates "StyleSheets" as they are known in the production package and moves all elements and styles into basic view functions inline.
This revision of style-elements reduces pain points and speeds development (IMHO).

This 2-column design is based on extensive work by Oliver Searle-Barnes, [opsb](https://github.com/opsb/cv-elm), who has published an advanced demo of the stylish-elephants experimental package. This example uses only a few of the available features that Oliver Searle-Barnes demonstrated, and even fewer of the experimental package's features. Searle-Barnes' work inspired this minor experiment, but my hope is that by demonstrating one way of reworking 4.2.1 code to exercise the new package, others will get working with the new package easily and find that experiments are fun and enjoyable to work with.

## Getting started

You need to have [Elm](http://elm-lang.org/) 0.18 installed on your machine.

Clone this repo.

Then generate it from within the new project's root directory using:

    elm reactor

And view it:
    localhost:8000/src/Main.elm
