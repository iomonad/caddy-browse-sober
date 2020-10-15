<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>{{.Host}}</title>
    <style>
      body {
	  margin: 0 auto;
	  max-width: 1000px;
	  padding: 20px;
	  background-color: #f4f4f4;
	  color: #444444;
	  font-family: monospace;
      }

      img {
	  border-radius: 32px;
      }

      h1,
      h2 {
	  font-size: 1em;
	  margin: 0;
      }

      a {
	  color: #204fd5;
	  text-decoration: none;
      }
      a:visited {
	  color: #334f83;
      }
      a:hover {
	  color: #204fd5;
	  text-decoration: underline;
      }

      #blob a {
	  color: #777777;
	  padding: 0 5px 0 0;
      }

      #blob a:hover {
	  text-decoration: none;
      }

      table thead td {
	  font-weight: bold;
      }

      table td {
	  padding: 0 0.4em;
      }

      #content table td {
	  white-space: nowrap;
	  vertical-align: top;
      }

      #branches tr:hover td,
      #tags tr:hover td,
      #index tr:hover td,
      #log tr:hover td,
      #files tr:hover td {
	  background-color: #eeeeee;
      }

      #index tr td:nth-child(2),
      #tags tr td:nth-child(3),
      #branches tr td:nth-child(3),
      #log tr td:nth-child(2) {
	  white-space: normal;
      }

      td.num {
	  text-align: right;
      }

      hr {
	  border: 0;
	  height: 3px;
      }

      #content hr {
	  display: none;
      }

      pre {
	  font-family: monospace;
      }

      pre a.h {
	  color: #888888;
      }

      span.i,
      pre a.i {
	  color: #24292e;
	  background-color: #e6ffed;
      }

      span.d,
      pre a.d {
	  color: #24292e;
	  background-color: #ffeef0;
      }

      pre a.h:hover,
      pre a.i:hover,
      pre a.d:hover {
	  text-decoration: none;
      }
    </style>
  </head>
  <body>

    <table>
      <tr><td><a href="/"><img src="https://git.trosa.io/logo.png" alt="" width="32" height="32" /></a></td>
	<td><span class="desc">File Server / <a href="https:/trosa.io/">~</a> / <a href="https:/git.trosa.io/">git</a></span></td></tr><tr><td></td><td>
      </td></tr>
    </table>
      </hr>
      <div id="content">
	<table id="index"><thead>
	    <tr><td><b>Name</b></td><td><b>Size</b></td><td><b>Type</b></td><td><b>Modified</b></td></tr></thead><tbody>
	    {{if .CanGoUp}}
	    <td><a href="..">../</a></td><td></td><td></td><td></td></tr><tr>
	    {{end}}
	    {{range .Items}}
	      {{if .IsDir}}
	      <td><a href="{{.URL}}">{{.Name}}</a></td><td>-</td><td>d</td><td>{{.HumanModTime "2006.02.01 15:04:05" }}</td></tr><tr>
              {{else}}
	      <td><a href="{{.URL}}">{{.Name}}</a></td><td>{{.Size}}</td><td>f</td><td>{{.HumanModTime "2006.02.01 15:04:05" }}</td></tr><tr>
              {{end}}
            {{end}}
        </table>
      </div>
     </body>
</html>
