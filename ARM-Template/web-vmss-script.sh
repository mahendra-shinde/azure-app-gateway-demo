apt update -y
apt install nginx -y
cd /var/www/html
rm index*.html
systemctl enable nginx
cat <<EOF > index.html
<!DOCTYPE html>
<head><title>Solar System</title>
<style>
body {
	margin: 0px;
	background-color:black;
	color: white;
}
img {
	border: 3px double gray;
}
</style>
</head>

<body>
<h1>Solar System</h1>
<h4>Website build by Mahendra Chandrakant Shinde</h4>
<table cellspacing="0" cellpadding="5px" width="80%">
<tr>
<td>The SUN </td>
<td><img src="images/sun.png" /></td>
</tr>
<tr>
<td>Planet Earth </td>
<td><img src="images/earth.png" /></td>
</tr>
<tr>
<td>Moon </td>
<td><img src="images/moon.png" /></td>
</tr>
</table>

</body>
</html>
EOF
