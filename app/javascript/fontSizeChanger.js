
// 文字サイズチェンジ
$(function() {
    function changeFontSize(buttonID, className) {
        $('body').removeClass('f-small f-large');
        $('body').addClass(className);
        $('.current').removeClass('current');
        $(buttonID).addClass('current');
    }

    changeFontSize('#f-small', 'f-small');	// 初期設定。ここを'#f-large'と'f-large'に変更すれば、デフォルトが大文字になります。

    $('#f-small').click(function() {
        changeFontSize('#f-small', 'f-small');
    });

    $('#f-large').click(function() {
        changeFontSize('#f-large', 'f-large');
    });
});
