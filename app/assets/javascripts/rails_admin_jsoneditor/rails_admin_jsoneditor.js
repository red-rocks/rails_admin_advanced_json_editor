//= require jsoneditor
//= require jsoneditor.ru

$(document).on('rails_admin.dom_ready', function () {

  $(".rails-admin-jsoneditor").each(function () {
    let container = this;
    if (!container.jsoneditor) {
      let field = $(container).siblings(".rails-admin-jsoneditor-field").find('input')[0]
      container.field = field;
      let options = {
        onChangeText: function (json_text) {
          $(container).find(".jsoneditor-field").addClass('cke_disabled');
          container.field.value = json_text;
        },
        languages: {
          ru: rails_admin_jsoneditor_ru
        },
        language: 'ru'
      };
      container.jsoneditor = new JSONEditor(container, options);
      container.jsoneditor.set(JSON.parse(field.value));

      $.each(['.jsoneditor-field', '.jsoneditor-value'], function(index, selector){
        var jsoneditor_field = $(container).find(selector)
        jsoneditor_field.addClass('cke_disabled')
        if(typeof CKEDITOR != 'undefined'){
          var inst = $.grep(Object.values(CKEDITOR.instances), function (a) {
            return a.element.$ == jsoneditor_field[0];
          })
          console.log(inst);
          if(inst){ 
            inst.destroy();
          }
        }
      });
    }
  });

});
