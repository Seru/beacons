# Beacons
A collection of beacons. Every beacon is a physical accessable device to assign exercises.
    
    @Beacons = Beacons= new Meteor.Collection 'beacon'

## Data Schema

    Beacons.attachSchema new SimpleSchema

      id:
        type: String
        index: true

      description:
        type: Object
        blackbox: true

      name:
        type: String
        
      abbr:
        type: String
        max: 10

## Access Rules
Instead of heavy Meteor methods, just use lazy access rules to allow CRUD operations directly.
    
    Beacons.allow

      insert: (userId, doc) ->
        # DRAGON: validate properly!
        return true

      update: (userId, docs, fields, modifier) ->
        # DRAGON: validate properly!
        return true

      remove: (userId, doc) ->
        # DRAGON: validate properly!
        return true

## Shorthand Helpers
These methods allow for DRY principles in the source code. Logic that is used more than once on the collection should be defined here.

    Beacons.helpers

      url: -> "/blog/#{@slug}"

## Complex Methods
For nontrivial logic, use a method! It's more secure than the usual allow/deny and you can do batch updates over collections in an organized manner.

    Meteor.methods
