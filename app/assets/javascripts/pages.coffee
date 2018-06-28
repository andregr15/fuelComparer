$(document).on 'turbolinks:load', ->
  $('#btn-compare').click ->
    $.ajax '/compare',
      type: 'get'
      dataType: 'json'
      data: {
        gasoline: $('#gasoline').val(),
        ethanol: $('#ethanol').val()
      },
      success: (data, text, jqXHR) ->
        $('#resultado').remove()
        insert_answer(data['value'])
      error: (jqXHR, textStatus, errorThrown) ->
        alert('Problemas: ' + errorThrown)
  return false

insert_answer = (value) ->
  $('.card-content').append(
    '<div class="row" id="resultado">' +
      '<hr/><div class="result">É mais econômico</div>' +
      '<div class="result">abastecer com <span class="' + (if value == 'Gasolina' then 'gasoline' else 'ethanol') + '">'+value+'</span></div>' +
    '</div>'
  )