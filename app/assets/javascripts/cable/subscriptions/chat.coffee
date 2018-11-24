App.chatChannel = App.cable.subscriptions.create { channel: "ChatChannel", room: "Best Room"},
  received: (data) ->
    @appendLine(data)

  appendLine: (data) ->
    $("[data-chat-room='Best Room']").append(
      @createLine(data)
    )

  createLine: (data) ->
    """
      <div class="alert alert-info text-right" role="alert">
        #{data["body"]}
      </div>
    """
