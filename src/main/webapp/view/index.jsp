<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

<title>Diameter Clock</title>

<style type="text/css">
  body {
    font-family: 'Roboto', Arial, Helvetica, sans-serif;
    line-height: 2em;
    background-color: darkturquoise;
  }
  h1 {
    font-size: 3em;
  }
  td {
    padding: 2px 10px 2px 0;
    font-size: x-large;
  }
  input {
    font-size:
    large;
  }

  /* Add styles here */
  main {
    background-color: white;
    padding: 40px;
    width: 1000px;
    margin: 80px auto;
    box-shadow: 0 40px 80px rgba(0,0,0,0.2);
  }
  section {
    display: inline-block;
    width: 1000px;
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
              <table>
                  <tr><td>
                    <label for="epochValue">Epoch Time:</label>
                  </td></tr>
                  <tr><td>
                     <input type="number" id="epochValue" name="epochValue" min="0">
                     <input type="submit">
                  </td></tr>
              </table>
      </form>
      <td/>
    </tr>
    <tr>
      <td>Date to Diameter Timestamp convertor:<td/>
      <td><form action="/customClock">
                        <table>
                            <tr><td>
                                <label for="humanDateTime">Datetime:</label>
                            </td></tr>
                            <tr><td>
                                <input type="datetime-local" id="humanDateTime" name="humanDateTime" placeholder="yyyy-MM-ddTHH:mm:ss">
                                <input type="submit">
                            </td></tr>
                        </table>
      </form>
      <td/>
    </tr>
    <tr>
          <td>Diameter Timestamp to Epoch and Date convertor:<td/>
          <td><form action="/customClock">
                        <table>
                            <tr><td>
                                <label for="diamTimeStamp">Diameter Timestamp:</label>
                            </td></tr>
                            <tr><td>
                                 <input type="number" id="diamTimeStamp" name="diamTimeStamp" min="2208988800">
                                 <input type="submit">
                            </td></tr>
                        </table>
          </form>
          <td/>
    </tr>
  </table>
  </section>

</main>

</body>
</html>

