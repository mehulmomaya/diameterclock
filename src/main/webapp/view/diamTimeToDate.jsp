<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

<title>Diameter Clock</title>

<style type="text/css">
  body {
    font-family: 'Roboto', Arial, Helvetica, sans-serif;
    line-height: 3em;
    background-color: darkturquoise;
  }
  h1 {
    font-size: 3em;
  }
  td {
    padding: 5px 30px 5px 0;
    font-size: x-large;
  }
  /* Add styles here */
  main {
    background-color: white;
    padding: 50px;
    width: 800px;
    margin: 100px auto;
    box-shadow: 0 40px 80px rgba(0,0,0,0.2);
  }
  section {
    display: inline-block;
    width: 750px;
  }
</style>

</head>

<body>

<main>
  <section>
  <h1>Date and Time after conversion</h1>
  <table>
      <tr>
      <h2>
        <td>Diameter Timestamp Value:<td/>
        <td><span style="color: darkturquoise"> ${diameterTimeStamp}</span><td/>
       </h2>
      </tr>
      <tr>
      <h2>
         <td>Epoch Time:<td/>
         <td><span style="color: darkturquoise"> ${epochTimeStamp}</span><td/>
      </h2>
      </tr>
      <tr>
      <h2>
          <td>Local Date & Time:<td/>
          <td><span style="color: darkturquoise"> ${diamToHumanDate}</span><td/>
      </h2>
      </tr>
    </table>

  <!--<h1>Converted Diameter Timestamp <span style="color: darkturquoise"> ${messageToPrint}</span> to Epoch <span style="color: darkturquoise"> ${epochTimeStamp}</span> and Human readable Date is <span style="color: darkturquoise"> ${diamToHumanDate}</span></h1>-->
  </section>
</main>

</body>
</html>

