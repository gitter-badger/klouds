<div id="content">
<h1>Please login</h1>
&nbsp;
{{if .flash.error}}
<h3>{{.flash.error}}</h3>
&nbsp;
{{end}}
{{if .Errors}}
{{range $rec := .Errors}}
<h3>{{$rec}}</h3>
{{end}}
&nbsp;
{{end}}
<form method="POST">
<table>
<tr>
    <td>Username:</td>
    <td><input name="username" type="text" autofocus /></td>
</tr>
<tr>      
    <td>Password:</td>
    <td><input name="password" type="password" /></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
    <td>&nbsp;</td><td><input type="submit" value="Login" /></td><td><a href="../../user/register">Register</a></td>
</tr>
</table>
</form>
</div>
