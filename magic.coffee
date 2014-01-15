


$ ->

  $('form').submit (e) ->
    do e.preventDefault
    val = $('input[type=text]').val()
    phone = parseInt(val).toString()

    if phone.length is 10
      $.ajax "https://zapier.com/hooks/catch/n/mcsn3/&to=#{phone}",
        type: "POST"
        success: =>
          $(this).hide()
          $('.success').show()
    else
      alert "Phone number should be 10 digits!"

