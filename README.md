# style-elements experiment in Elm

Exercise in upgrading 4.2.1 style-elements package in Elm to the new experimental package.

This experiment is a refactoring exercise of [style-elements](http://package.elm-lang.org/packages/mdgriffith/style-elements/4.2.1/Style) for Elm, v4.2.1 to the next version of the package.
Matthew Griffith is actively working on the next version.
Version 3.0.2 of the experimental API, upon which this project depends, may be found at [stylish-elephants](http://package.elm-lang.org/packages/mdgriffith/stylish-elephants/3.0.2).

The latest stylish-elephants may be (read at elm-package)[http://package.elm-lang.org/packages/mdgriffith/stylish-elephants/latest/].

Based on questions by users on elm-slack and issues reported by users, I decided to abstract one of the tricks I have found useful in working with the new, unfinished package.

This code uses a refactoring approach that has worked for me to upgrade 4.2.1 code to use the new version.

The new version eliminates "StyleSheets" as they were known up to version 4.x and moves all elements and styles into basic view functions inline.

What was a 'StyleSheet' definition in style-elements 4.2.1 can now be defined using the experimental package on a parent element and what were 'variations' on element may be defined on a child element.

The DropCap paragraph element in this experiment, for example, is a child of an 'el' (the parent).

This 2-column design is based on extensive work by Oliver Searle-Barnes, [opsb](https://github.com/opsb/cv-elm), who has published an advanced demo of the stylish-elephants experimental package. This example uses only a few of the available features that Oliver Searle-Barnes demonstrated, and even fewer of the package's features. His work inspired this minor experiment, but my hope is that by demonstrating one way of reworking 4.2.1 code to exercise the new package, others will get working with the new package easily and find that experiments are fun and enjoyable to work with.

## Getting started

You need to have [Elm](http://elm-lang.org/) 0.18 installed on your machine.

Clone this repo.

Then generate it:

    elm reactor

And view it:
    localhost:8000/src/Main.elm
