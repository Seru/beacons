# Categories
A collection of categories. Every category holds information about a discipline.
    
    @Categories = Categories = new Meteor.Collection 'category'

## Data Schema

    Categories.attachSchema new SimpleSchema

      name:
        type: String
        index: true
        min: 3
        max: 100

      description:
        type: String

## Shorthand Helpers
These methods allow for DRY principles in the source code. Logic that is used more than once on the collection should be defined here.

    Categories.helpers

## Complex Methods
For nontrivial logic, use a method! It's more secure than the usual allow/deny and you can do batch updates over collections in an organized manner.

    Meteor.methods
