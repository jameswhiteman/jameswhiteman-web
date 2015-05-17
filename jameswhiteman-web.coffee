root = global ? window

if root.Meteor.isClient
    # Routes
    Router.route '/', ->
        this.render 'site'
        this.render 'navigation', {to: 'header'}
        this.render 'boundary', {to: 'footer'}
        this.render 'intro', {to: 'content'}
    
    # Document Ready
    Template.navigation.rendered = ->
        $(".button-collapse").sideNav()
    Template.intro.rendered = ->
        $('.parallax').parallax()
