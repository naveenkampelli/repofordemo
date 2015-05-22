var spire = spire || {};

(function ($) {
  'use strict';

  var initiFaqs = function(context, settings) {
    // If RightNow isn't loaded, wait.
    var _ref;
    if ((typeof RightNow !== "undefined" && RightNow !== null ? (_ref = RightNow.Client) != null ? _ref.Controller : void 0 : void 0) != null) {
        if (settings.spireIfaq == null) {
            //Adding default settings for spireIfaq when it is null
            settings.spireIfaq = {
                'ifaqs': {
                    0: {
                    'description':false,
                    'div_id': 'ifaq',
                    'instance_id': 'skw',
                    'module': 'KnowledgeSyndication',
                    'number_answers': 7,
                    'type': 3,
                    'search_box':true
                    }
                }
            };
        }
          
  
     if (settings.spireIfaq && settings.spireIfaq.ifaqs) {
              
        var needsInit = false;
        for (var i in settings.spireIfaq.ifaqs) {
            
          // Attach and run those iFaq elements.
          var iFaqsettings = settings.spireIfaq.ifaqs[i];
          
          $('#' + settings.spireIfaq.ifaqs[i].div_id, context).once('spireiFaqLoader', function() {
            RightNow.Client.Controller.addComponent(iFaqsettings,
              "https://edfenergyuk.widget.custhelp.com/ci/ws/get"
            );
            needsInit = true;
          });
        }
        // If we added some iFaq widgets, init those.
        if (needsInit) {
          RightNow.Client.Controller.init();
        }
      }
    }
    else {
      // RightNow isn't loaded, wait for a bit and try again.
      setTimeout(function() {
        initiFaqs(context, settings);
      }, 100);
    }

    var popped = false;

    // SmartAssist stuff for the contact form - works by targeting a textarea
    // with an ID of message.
    $('.webform-component--message textarea').once('smartassist').each(function(){
      var $parent_form = $(this).parents('form');

      // AJAX version.
      var submit_id = $parent_form.find(':submit').attr('id');
      var submit_ajax = Drupal.ajax[submit_id];

      // If we've got a submit, and it's in Drupal.ajax, we're ajaxy.
      if (submit_id && submit_ajax) {
        // So override Drupal.ajax.prototype.beforeSubmit.
        submit_ajax.beforeSubmit = function(form_values, element_settings, options) {
          var terms = $('.webform-component--message textarea', this.form).val();
          terms = terms.split('/').join(''); // Fast404 doesn't dig forward slashes SP-1613
          var href = '/colorbox/ifaq/search/' + encodeURIComponent(terms);

          var ajax_event = $(this);

          if (terms && !popped) {
            // Pop the smart assist.
            $.colorbox({
              href: href,
              opacity: 0.75,
              maxWidth: '800',
              width: '90%',
              className: 'local-colorbox',
              close: 'Press Esc or <span>Close</span>',
              onComplete: function() {
                $(window).on('resize.localPopup', function() {
                  $.colorbox.resize({
                    width: window.innerWidth > 800 ? '800px' : '90%'
                  });
                });
                // Bind the close links.
                $('.submit-the-form').click(function(e2){
                  e2.preventDefault();
                  // Set the flag so we do not show the popup next time.
                  popped = true;
                  $('#cboxClose').trigger('click');
                });
                $('.close-window').click(function(e2){
                  e2.preventDefault();
                  $('#cboxClose').trigger('click');
                });
              },
              onCleanup: function() {
                if (popped) {
                  // Retrigger the AJAX submission.
                  $('.form-submit',$parent_form).trigger('click');
                }
              }
            });
            this.ajaxing = false;
            return false;
          }
          return true;
        }
      }

      // Non AJAX version.
      $parent_form.submit(function(e){
        // Do we have any content in the message field?
        var terms = $('.webform-component--message textarea', this).val();

        // If we have popped then submit the form.
        if (!popped && terms) {
            var href = '/colorbox/ifaq/search/' + encodeURIComponent(terms);

            // Pop the smart assist.
            $.colorbox({
                href: href,
                opacity: 0.75,
                maxWidth: '800',
                width: '90%',
                className: 'local-colorbox',
                close: 'Press Esc or <span>Close</span>',
                onComplete: function() {
                    $(window).on('resize.localPopup', function() {
                        $.colorbox.resize({
                            width: window.innerWidth > 800 ? '800px' : '90%'
                        });
                    });
                    // Bind the close links.
                    $('.submit-the-form').click(function(e2){
                        e2.preventDefault();
                        popped = true;
                        $('#cboxClose').trigger('click');
                    });
                    $('.close-window').click(function(e2){
                        e2.preventDefault();
                        $('#cboxClose').trigger('click');
                    });
                },
                onCleanup: function() {
                  if (popped) {
                    $parent_form.trigger('submit');
                  }
                }
            });
          e.preventDefault();
        }
      });
    });
  }

  /**
   * A Drupal behavior for adding iFaq widgets as needed.
   */
  Drupal.behaviors.spireiFaqLoader = {
    attach: function(context, settings) {
      initiFaqs(context, settings);
    }
  };

})(jQuery);
