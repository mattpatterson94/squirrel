$(document)
  .ready ->
    $("#messageForm")
      .submit (e) ->
        e.preventDefault()

        message = $('#message').val()
        $('#message').val('')

        App.chatChannel.send({
          sent_by: "Anonymous",
          body: message
        })
