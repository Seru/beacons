# Router
The routing for the application in public and private combined.

## General Configurations

    Router.configure
      layoutTemplate: 'layout'
      loadingTemplate: 'loading'
      notFoundTemplate: 'notFound'
      load: ->
        if Meteor.isClient
          $('html, body').animate({ scrollTop: 0 }, 400)
          $('#main').hide().fadeIn(200)
        do @next

## Public Routes

    Router.route '/',
      name: 'index'

    Router.route '/categories',
      name: 'categoryIndex'
      waitOn: -> [ Meteor.subscribe('publishedCategories') ]
      data: -> categories: Categories.find()

    Router.route '/category/:id',
      name: 'category'
      waitOn: -> [ Meteor.subscribe('publishedExercises'), Meteor.subscribe('publishedCategories') ]
      data: ->
        beacons = @ScannedBeacons.get()
        exercises = Exercises.find({category: @params.id}).fetch()
        _.each exercises, (exercise) ->
          exercise.present = false
          _.find beacons, (beacon) -> 
            if beacon.proximityUUID is exercise.beacon
              exercise.present = true
              exercise.range = beacon.rssi
              true
            else false
        {
          name: Categories.findOne({_id: @params.id}).name
          exercises: exercises
        }

    Router.route '/exercise/:id',
      name: 'exercise'
      waitOn: -> [ Meteor.subscribe 'publishedExercises' ]
      data: -> Exercises.findOne _id: @params.id