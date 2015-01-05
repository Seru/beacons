# Exercises
A collection of exercises. Every exercise holds information like beacon, category, general informations and more.
    
    @Exercises = Exercises = new Meteor.Collection 'exercise'

## Data Schema

    Exercises.attachSchema new SimpleSchema

      name:
        type: String
        index: true
        min: 3
        max: 100

      moodle:
        type: Object
        blackbox: true

      category:
        type: String
        
      dependencies:
        type: [String]
        
      beacon:
        type: String

      createdAt:
        type: Date
        defaultValue: new Date()

## Shorthand Helpers
These methods allow for DRY principles in the source code. Logic that is used more than once on the collection should be defined here.

    Exercises.helpers

## Complex Methods
For nontrivial logic, use a method! It's more secure than the usual allow/deny and you can do batch updates over collections in an organized manner.

    Meteor.methods
