var soal_id = '';
var jawaban = '';
var endscore= '';

function loadSoal(idsoal) {

    var currentSoal         = '<span class="q_soal">|SOAL|</span>';

    var answerTemplate      = '<div class="list-group"><button  id="jwb" type="button" class="jwb list-group-item list-group-item-action" value="a" >a. |JWB_a|</button><button  id="jwb" type="button" class="jwb list-group-item list-group-item-action" value="b" >b. |JWB_b|</button><button  id="jwb" type="button" class="jwb list-group-item list-group-item-action" value="c" >c. |JWB_c|</button><button  id="jwb" type="button" class="jwb list-group-item list-group-item-action" value="d" >d. |JWB_d|</button></div>';
    
    $('#loading').show(); 
    $.ajax({
        type: 'POST',
        crossDomain: true,
        url: 'http://server-exam.epizy.com/serversoal/index.php/soal/soal?id='+idsoal,
        dataType: 'jsonp',
        success: function (ajaxReturnData) {
            //$('.q_soal').html('');
            //$('.list-group').html('');

            var newSoal  = '';
            var answer   = '';

        	  $.each(ajaxReturnData, function () {
                var newSoal  = currentSoal;
                var answer   = answerTemplate;
                newSoal      = newSoal.replace("|SOAL|",this.question);

                answer      = answer.replace("|JWB_a|",this.jwb_a);
                answer      = answer.replace("|JWB_b|",this.jwb_b);
                answer      = answer.replace("|JWB_c|",this.jwb_c);
                answer      = answer.replace("|JWB_d|",this.jwb_d);
                jawaban     = this.benar;
                soal_id     = this.id;
                $('.content_soal').html(newSoal+answer);
                console.log(this.question);
                $('#loading').hide();
        	  });
        }, error: function(xhr){
            console.log('Request Status: ' + xhr.status + ' Status Text: ' + xhr.statusText + ' ' + xhr.responseText);
            $('.content_soal').html('<a href="http://server-exam.epizy.com/serversoal/index.php/soal?i=1" target="_blank" class=" error-btn btn btn-primary btn-lg active" role="button" aria-pressed="true" data-toggle="tooltip" data-placement="bottom" title="Server perlu dimuat ulang. Please click to refresh !!">Klik Disini Untuk Memulai</a>');
            $('#loading').hide();
        }
    });
}

function save_answ(answ){
    $.ajax({
        url: 'process.php', 
        type: 'post',
        data: { id:soal_id,jw:jawaban, answ: answ },
        cache: false,
        success: function ( response ) {
            console.log(response);
            score(response);
        }
    });
}

function score(value){
    var allscore        = value;
    var obj_allscore    = JSON.parse(allscore);
    endscore            = Object.keys(obj_allscore).length;
    console.log(endscore);
}

$(function(){
    $('.btn-number').click(function() {
            var myId = $(this).val();

            if($.isNumeric(myId)){
                loadSoal(myId);
            }

            if(myId == 'Next1'){
                $('.first-groups').addClass('hidden');
                $('.second-groups').removeClass('hidden');
            }
            if(myId == 'Next2'){
                $('.second-groups').addClass('hidden');
                $('.three-groups').removeClass('hidden');
            }
            if(myId == 'Next3'){
                $('.three-groups').addClass('hidden');
                $('.four-groups').removeClass('hidden');
            }
            if(myId == 'Prev1'){
                $('.second-groups').addClass('hidden');
                $('.first-groups').removeClass('hidden');
            }            
            if(myId == 'Prev2'){
                $('.three-groups').addClass('hidden');
                $('.second-groups').removeClass('hidden');
            }            
            if(myId == 'Prev3'){
                $('.four-groups').addClass('hidden');
                $('.three-groups').removeClass('hidden');
            }
        });
});

$(document).on('click', "#jwb", function () {
    var answ = $(this).val();
    save_answ(answ);
});

$(document).on('click','.error-btn', function() {
    reload();
});

$(function() {
    $('.endexam').click(function(){
        $('.valuexam').html('Score:'+endscore*5);
        sessionStorage.clear();
    });
});