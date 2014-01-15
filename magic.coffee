
$ ->

  $('form').submit (e) ->
    do e.preventDefault
    val = $('input[type=text]').val()
    phone = parseInt(val).toString()

    if phone.length is 10
      $.ajax
        url: "https://zapier.com/hooks/catch/n/mcsn3/?to=#{phone}"
        type: "POST"
        crossDomain: true

      setTimeout =>
        $(this).hide()
        $('.success').show()
      , 1000

    else
      alert "Phone number should be 10 digits!"

