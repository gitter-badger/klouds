<div id="content">
<h1>Your Profile</h1>
&nbsp;
{{if .flash.error}}
<h3>{{.flash.error}}</h3>
&nbsp;
{{end}}{{if .flash.notice}}
<h3>{{.flash.notice}}</h3>
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
    <td>
        Username : 
    </td>
    <td>
        {{.Username}}
    </td>
</tr>
<tr>
    <td>First name:</td>
    <td><input name="first" type="text" value="{{.First}}" /></td>
</tr>
<tr>
    <td>Last name:</td>
    <td><input name="last" type="text" value="{{.Last}}"/></td>
</tr>
<tr>
    <td>Email address:</td>
    <td><input name="email" type="text" value="{{.Email}}"/></td>
</tr>
<tr>      
    <td>Current password:</td>
    <td><input name="current" type="password" /></td>
</tr>
<tr>
<td>Optional:</td>
</tr>
<tr>      
    <td>New password (must be at least 6 characters):</td>
    <td><input name="password" type="password" /></td>
</tr>
<tr>      
    <td>Confirm new password:</td>
    <td><input name="password2" type="password" /></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
    <td>&nbsp;</td><td><input type="submit" value="Update" /></td>
</tr>
</table>

<table>
    <tr>
        <td></td>
        <td>
            <h1>APPLICATION LIST</h1>
        </td>
        <td></td>
    </tr>    
    <tr>
        <td>Application name<br>
        -------------------</td>
        <td>Application link<br>
            -------------------
        </td>
        <td>DELETE APPLICATION<br>
        -------------------</td>
    </tr>
    {{str2html .AppList}}
</table>
<a href="../../user/remove">Remove account</a>
</form>
</div>