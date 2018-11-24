window.name = "#{Math.random()}"

App.chatChannel = App.cable.subscriptions.create { channel: "ChatChannel", room: "Best Room"},
  received: (data) ->
    @appendLine(data)

  appendLine: (data) ->
    $("[data-chat-room='Best Room']").append(
      @createLine(data)
    )

  createLine: (data) ->
    if data["sent_by"] == window.name
      $class = "alert alert-info text-right"
    else
      $class = "alert alert-secondary"

    """
      <div class="#{$class}" role="alert">
        #{data["body"]}
      </div>
    """
