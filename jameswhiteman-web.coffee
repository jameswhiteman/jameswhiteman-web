root = global ? window

if root.Meteor.isClient
    # Routes
    Router.route '/', ->
        this.render 'site'
        this.render 'navigation', {to: 'header'}
        this.render 'boundary', {to: 'footer'}
        this.render 'intro', {to: 'content'}

    Router.route '/connect', ->
        this.render 'site'
        this.render 'navigation', {to: 'header'}
        this.render 'boundary', {to: 'footer'}
        this.render 'connect', {to: 'content'}
    
    Router.route '/employment', ->
        this.render 'site'
        this.render 'navigation', {to: 'header'}
        this.render 'boundary', {to: 'footer'}
        this.render 'employment', {to: 'content'}
    
    Router.route '/experience', ->
        this.render 'site'
        this.render 'navigation', {to: 'header'}
        this.render 'boundary', {to: 'footer'}
        this.render 'experience', {to: 'content'}
    
    Router.route '/skills', ->
        this.render 'site'
        this.render 'navigation', {to: 'header'}
        this.render 'boundary', {to: 'footer'}
        this.render 'skills', {to: 'content'}

    # Helpers
    Template.employment.helpers
        jobs: -> Jobs.find()
        timePeriod: (start, end) ->
            moment(@start).format 'MM/DD/YYYY' + ' - ' + moment(@end).format 'MM/DD/YYYY'

    Template.skills.helpers
        skills: -> Skills.find()

    Template.experience.helpers
        experiences: -> Experiences.find()
        date: (time) ->
            moment(@time).format 'MM/DD/YYYY'

    # Document Ready
    Template.navigation.rendered = ->
        $(".button-collapse").sideNav()
    Template.intro.rendered = ->
        $('.parallax').parallax()
