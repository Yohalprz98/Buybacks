<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Buybacks</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="margin-top: 10px; margin-bottom: 20px">Buybacks</h1>

    <h6 style="margin-top: 10px; margin-bottom: 10px;">Contact</h6>
    <div class="form-check">
        <input class="form-check-input" name="NO CONTACT WITH CUSTOMER "  type="checkbox" value="" id="1">
        <label class="form-check-label" for="1">
            NO CONTACT WITH CUSTOMER
        </label>
    </div>


    <h6 style="margin-top: 10px; margin-top: 10px;">Payments</h6>
    <div class="form-check">
        <input class="form-check-input" name="NO PAYMENTS FROM CUSTOMER " type="checkbox" value="" id="2">
        <label class="form-check-label"  for="2">
            NO PAYMENTS FROM CUSTOMER
        </label>
    </div>


    <div class="form-check">
        <input class="form-check-input" name="CUSTOMER HAS NOT MADE A FULL MONTH'S WORTH OF PAYMENT(S) " type="checkbox" value="" id="3">
        <label class="form-check-label"  for="3">
            CUSTOMER HAS NOT MADE A FULL MONTH'S WORTH OF PAYMENT(S)
        </label>
    </div>


    <h6 style="margin-top: 10px; margin-top: 10px;">Days past due</h6>
    <div class="form-check">
        <input class="form-check-input" name="25+DPD () DURING RECOURSE PERIOD " type="checkbox" value="" id="4">
        <label class="form-check-label"  for="4">
            25+DPD () DURING RECOURSE PERIOD
        </label>
    </div>

    <div class="form-check">
        <input class="form-check-input" name="25+DPD DURING RECOURSE PERIOD SINCE PURCHASE DATE " type="checkbox" value="" id="5">
        <label class="form-check-label"  for="5">
            25+DPD DURING RECOURSE PERIOD SINCE PURCHASE DATE
        </label>
    </div>



    <h6 style="margin-top: 10px; margin-top: 10px;">Contract & title</h6>
    <div class="form-check">
        <input class="form-check-input" name="MISSING CONTRACT " type="checkbox" value="" id="6">
        <label class="form-check-label"  for="6">
            MISSING CONTRACT
        </label>
    </div>

    <div class="form-check">
        <input class="form-check-input" name="MISSING TITLE " type="checkbox" value="" id="7">
        <label class="form-check-label"  for="7">
            MISSING TITLE
        </label>
    </div>

    <div class="form-check">
        <input class="form-check-input" name="MISSING CONTRACT AND TITLE " type="checkbox" value="" id="8">
        <label class="form-check-label"  for="8">
            MISSING CONTRACT AND TITLE
        </label>
    </div>


    <h6 style="margin-top: 10px; margin-top: 10px;">Conclusion</h6>

<div class="form-check">
    <input class="form-check-input" name="EXTENDED RECOURSE: " type="checkbox" value="" id="9">
    <label class="form-check-label"  for="9">
        EXTENDED RECOURSE
    </label>
</div>

    <div class="form-check">
        <input class="form-check-input" name="BUYBACK: " type="checkbox" value="" id="10">
        <label class="form-check-label"  for="10">
            BUYBACK
        </label>
    </div>

    <div class="form-check">
        <input class="form-check-input" name="CUSTOMER NO LONGER HAS UNIT " type="checkbox" value="" id="11">
        <label class="form-check-label"  for="11">
            CUSTOMER NO LONGER HAS UNIT
        </label>
    </div>

    <div class="form-check">
        <input class="form-check-input" name="IN EXTENDED RECOURSE LONGER THAN 14 DAYS " type="checkbox" value="" id="12">
        <label class="form-check-label"  for="12">
            IN EXTENDED RECOURSE LONGER THAN 14 DAYS
        </label>
    </div>

    <script>

        function getNote(id){

            //this verifies if the checkbox is checked in order to take the name to the notes box
            var checkbox = document.getElementById(id);

                if (checkbox.checked){
                    return checkbox.name;
                } else {
                    return null;
                }
            }

        function obtainNotes (){
            var note = "";
            var text = getNote(9);
            if (text != null){
                note += text;
            }
            var text = getNote(10);
            if (text != null){
                note += text;
            }
            var text = getNote(11);
            if (text != null){
                note += text;
            }
            var text = getNote(12);
            if (text != null){
                note += text;
            }
            var text = getNote(4);
            if (text != null){
                note += text;
            }
            var text = getNote(5);
            if (text != null){
                note += text;
            }
            var text = getNote(1);
            if (text != null){
                note += "*"+text;
            }
            var text = getNote(2);
            if (text != null){
                note += "*"+text;
            }
            var text = getNote(3);
            if (text != null){
                note += "*"+text;
            }
            var text = getNote(6);
            if (text != null){
                note += "*"+text;
            }
            var text = getNote(7);
            if (text != null){
                note += "*"+text;
            }
            var text = getNote(8);
            if (text != null){
                note += "*"+text;
            }
            var textarea = document.getElementById("textArea");
            textarea.value = note;
        }

        function clearBoxes(){
            for(var i=1; i<=12; i++){
                var id = i;
                var checkbox = document.getElementById(id);
                checkbox.checked = false;
                obtainNotes();
            }
        }
    </script>

    <div class="mb-3" style="margin-top: 20px;">
        <button type="button" class="btn btn-outline-primary" onclick="obtainNotes()">Save</button>
        <button type="button" class="btn btn-outline-danger" onclick="clearBoxes()">Clear</button>
        <h6><label for="textArea" class="form-label" style="margin-top: 10px">Notes</label></h6>
        <textarea class="form-control" id="textArea" rows="3"></textarea>
    </div>

</div>
</body>
</html>
