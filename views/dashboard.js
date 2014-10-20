//var xhr = createRequest(); // from xhr.js (in Lecture 1)
var xhr = false;
if (window.XMLHttpRequest)
{
xhr = new XMLHttpRequest();
}
else if (window.ActiveXObject)
{
xhr = new ActiveXObject('Microsoft.XMLHTTP');
}


function getMessages()
{
    xhr.open('GET','http://localhost:9292/messages', true);

    xhr.onreadystatechange = getMessage;

    xhr.send();
}

function getMessage()
{


	//if ((xhr.readyState == 4) &&(xhr.status == 200))
    if (xhr.readyState == 4)
	{
		var serverResponse = xhr.responseText;

		alert(serverResponse);
		var heard = serverResponse.getElementsByTagName("tagname");
		var id = serverResponse.getElementsByTagName("tagname");

		var display = document.getElementById("display");
		var display_area = "<table border='1'><tr> <th>Message display here</th> </tr>";

		display_area.innerHTML = "";

		for (i=0; i<heard.length; i++)
		{


			if (window.ActiveXObject)
			{
				//generating the output on IE browsers.
				display_area += "<tr><td>";
				display_area +=  "	"+message[i].firstChild.text;
				display_area += "</td><td>";
				display_area += "	"+ date[i].firstChild.text;
				display_area += "</td></tr>";

			}
			else
			{

				//generating the output on browsers other than IE.
				display_area += "<tr><td>";
				display_area +=  "	"+message[i].firstChild.textContent;
				display_area += "</td><td>";
				display_area += "	"+ date[i].firstChild.textContent;
				display_area += "</td></tr>";
			}
		}
				display_area += "</td> </tr> </table>";

		display.innerHTML = display_area;
			
	}


  window.setInterval(function(){getMessage()}, 5000);
}


