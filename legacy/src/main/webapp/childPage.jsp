<html>
  <script type="text/javascript">
    /**
    * 親画面に入力値を設定
    */
    function setValueParentPage(){
      let form = document.getElementById('childForm');

      let parentPageOpener = window.opener;
      parentPageOpener.document.getElementById('parentInput').value
        = form.childInput.value;
        window.close();
    }
  </script>
<body>
<h2>Child Page</h2>
<form id="childForm" name="childForm">
  <input type="text" id="childInput" name="childInput">
  <input type="button" value="Set Value" onclick="setValueParentPage()">
</form>
</body>
</html>
