<html>
  <script type="text/javascript">
    /**
    * 子画面起動
    */
    function openChildPage(){
      let form = document.getElementById('parentForm');
      let url = '/legacy/child';
      let randomNumber = Math.random().toString();

      //フォーム設定
      form.action = url;
      form.method = 'POST';

      // 子画面を開く
      form.target = randomNumber;
      let childWindow = window.open('', randomNumber);
      childWindow.focus();

      // フォーム送信
      form.submit();
      form.target = '_self'
    }


    /**
    * 子画面入力内容反映
    */
    function setChildInput(){
      // hidden項目から入力値反映
      let form = document.getElementById('parentForm');
      form.parentInput.value = form.hiddenChildInput.value;
    }

  </script>
<body>
<h2>Parent Page</h2>
<form id="parentForm" name="parentForm">
  <input type="text" id="parentInput" name="parentInput">
  <input type="button" value="Go Child" onclick="openChildPage()">
</form>
</body>
</html>
