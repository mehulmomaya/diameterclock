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
  <h2>Current Time in Diameter Timestamp is <span id="diametertimestampvalue" style="color: darkturquoise"> ${message}</span></h2>
  <h2><p>To Convert Epoch Time to Diameter Time Stamp </p>  </h2>

<table>
    <tr>
      <td>Epoch to Diameter Timestamp convertor:<td/>
      <td><form action="/customClock">
              <label for="epochValue">EpochTime:</label>
              <input type="number" id="epochValue" name="epochValue" min="0">
              <input type="submit">
            </form>
            <td/>
    </tr>
    <tr>
      <td>Date to Diameter Timestamp convertor:<td/>
      <td><form action="/customClock">
                        <label for="humanDateTime">Datetime:</label>
                        <input type="datetime-local" id="humanDateTime" name="humanDateTime">
                        <input type="submit">
                      </form>
                      <td/>
    </tr>
    <tr>
          <td>Diameter Timestamp to Epoch and Date convertor:<td/>
          <td><form action="/customClock">
                            <label for="diamTimeStamp">Diameter Timestamp:</label>
                            <input type="number" id="diamTimeStamp" name="diamTimeStamp" min="2208988800">
                            <input type="submit">
                          </form>
                          <td/>
        </tr>
  </table>
  </section>

</main>

</body>
</html>

