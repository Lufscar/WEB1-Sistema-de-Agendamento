<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.ufscar.dc.dsw.domain.Profissionais"%>
<%@page import="br.ufscar.dc.dsw.dao.ProfissionaisDAO"%>
<%
	ProfissionaisDAO daoprofissionais = new ProfissionaisDAO();
ArrayList<Profissionais> profissionais = null;
String area = request.getParameter("a");
if (area != null) {
	profissionais = daoprofissionais.getbyArea(area);
} else {
	profissionais = daoprofissionais.getAll();
}
%>


<!DOCTYPE html>
<fmt:bundle basename="messages">
	<html>
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="content-language" content="lat" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="description"
	content="Sistema para agendamento de consultas online comprofissionais" />
<meta name="keywords" content="Lorem, ipsum, dolor, sit">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no" />
<style type="text/css">
.container2x5 {
	width: 95%;
	overflow: hidden;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul {
	padding: 0px;
	margin: 0px;
}

.container2x5 ul li {
	float: left;
	width: 80vh;
	height: 120px;
	margin: 50px 0px 0px 6%;
	border: 10px solid white;
	color: white;
}

.container2x5 p {
	color: #6c6c6c;
}

.container2x5 ul li:hover {
	opacity: 0.7;
}

.container2x5 ul li .title {
	width: 100%;
	height: 50px;
	line-height: 50px;
	background: white;
	text-align: center;
}

.container2x5 ul li .title:hover {
	color: black;
}

.container2x5 ul li #image_beside {
	margin-top: 10px;
}

.container2x5 ul li #image_beside img {
	float: left;
	margin: 10px 10px 10px 10px;
}

.container2x5 ul li #image_beside p {
	text-align: left;
}

.container2x5 ul li #image_beside h2 {
	text-align: left;
}

.container2x5 h1 {
	color: #2571b7;
}

.container2x5 ul li ._1 {
	background: #0072c6;
	margin: 20px auto;
	padding: 20px 20px;
	color: white;
}

.container2x5 ul li ._2 {
	background: #2c5898;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._3 {
	background: #207245;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._4 {
	background: #cb4a32;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._5 {
	background: #733781;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._6 {
	background: #00aff0;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._7 {
	background: #094ab2;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._8 {
	background: #0073c6;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._9 {
	background: #0093be;
	margin: 20px auto;
	padding: 20px 20px;
}

.container2x5 ul li ._10 {
	background: #5558af;
	margin: 20px auto;
	padding: 20px 20px;
}

.containerHeader nav>a {
	text-decoration: none;
	font-weight: 800;
	font-size: 32px;
}

.containerHeader nav ul {
	display: flex;
	flex-direction: row;
	align-items: center;
	list-style: none;
	padding: 0;
	width: 80%;
}

.containerHeader nav ul li {
	text-align: center;
	width: 100%;
}

.containerHeader nav ul li img {
	width: 100px;
	margin-right: 250px;
}

.containerHeader nav ul li a {
	display: inline-block;
	padding: 10px 0;
	width: 70%;
	text-decoration: none;
	color: white;
}

.containerHeader a .active, a:hover {
	background: #002050;
	transition: .5s;
}

.containerHeader .checkbtn {
	font-size: 30px;
	color: white;
	float: right;
	line-height: 80px;
	margin-right: 40px;
	cursor: pointer;
	display: none;
}

.containerHeader #check {
	display: none;
}

.cover {
	min-height: 100vh;
	background:
		url(https://agorarn.com.br/files/uploads/2020/09/Atendimento-medico-Capa-930x524.jpg)
		no-repeat;
	background-size: cover;
	height: calc(100vh - 80px) justify-content: space-between;
	color: black;
}

.cover .top_cover {
	margin-left: 100px;
	min-height: 150px;
}

.cover .center_cover {
	margin-left: 100px;
	display: block;
	width: 160px;
	height: 40px;
	padding: 10px 5px;
	background-color: #00a4ef;
	color: white;
	text-decoration: none;
	text-align: center;
}

.cover .bottom_cover {
	display: inline-block;
	width: 50px;
	height: 50px;
	margin: 0 100px 0 100px;
	transform: translate(-50%, -50%);
}

.cover .empty {
	display: inline-block;
	min-width: 300px;
	height: 100px;
	transform: translate(-50%, -50%);
}

.cover .margin {
	position: relative;
	z-index: 5;
	text-align: center;
	color: white;
	max-height: 40px;
}

html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: center;
}

:focus {
	outline: 0;
}

article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	width: 90%;
	border: 1px solid #0072c6;
}

th {
	height: 50px;
	background-color: #0072c6;
	color: white;
}

th, td {
	border-bottom: 1px solid #0072c6;
	text-align: center;
	vertical-align: center;
	padding: 10px;
}

tr:hover {
	background-color: #f1f1f1
}

input[type=search]::-webkit-search-cancel-button, input[type=search]::-webkit-search-decoration,
	input[type=search]::-webkit-search-results-button, input[type=search]::-webkit-search-results-decoration
	{
	-webkit-appearance: none;
	-moz-appearance: none;
}

input[type=search] {
	-webkit-appearance: none;
	-moz-appearance: none;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
}

textarea {
	overflow: auto;
	vertical-align: top;
	resize: vertical;
}

audio, canvas, video {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	max-width: 100%;
}

audio:not([controls]) {
	display: none;
	height: 0;
}

[hidden] {
	display: none;
}

html {
	font-size: 100%; /* 1 */
	-webkit-text-size-adjust: 100%; /* 2 */
	-ms-text-size-adjust: 100%; /* 2 */
}

a:focus {
	outline: thin dotted;
}

a:active, a:hover {
	outline: 0;
}

img {
	border: 0; /* 1 */
	-ms-interpolation-mode: bicubic; /* 2 */
}

figure {
	margin: 0;
}

form {
	margin: 0;
}

fieldset {
	border: 1px solid #c0c0c0;
	margin: 0 2px;
	padding: 0.35em 0.625em 0.75em;
}

legend {
	border: 0; /* 1 */
	padding: 0;
	white-space: normal; /* 2 */
	*margin-left: -7px; /* 3 */
}

button, input, select, textarea {
	font-size: 100%; /* 1 */
	margin: 0; /* 2 */
	vertical-align: baseline; /* 3 */
	*vertical-align: middle; /* 3 */
}

button, input {
	line-height: normal;
}

button, select {
	text-transform: none;
}

button, html input[type="button"], /* 1 */ input[type="reset"], input[type="submit"]
	{
	-webkit-appearance: button; /* 2 */
	cursor: pointer; /* 3 */
	*overflow: visible; /* 4 */
}

button[disabled], html input[disabled] {
	cursor: default;
}

input[type="checkbox"], input[type="radio"] {
	box-sizing: border-box; /* 1 */
	padding: 0; /* 2 */
	*height: 13px; /* 3 */
	*width: 13px; /* 3 */
}

input[type="search"] {
	-webkit-appearance: textfield; /* 1 */
	-moz-box-sizing: content-box;
	-webkit-box-sizing: content-box; /* 2 */
	box-sizing: content-box;
}

input[type="search"]::-webkit-search-cancel-button, input[type="search"]::-webkit-search-decoration
	{
	-webkit-appearance: none;
}

button::-moz-focus-inner, input::-moz-focus-inner {
	border: 0;
	padding: 0;
}

textarea {
	overflow: auto; /* 1 */
	vertical-align: top; /* 2 */
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

html, button, input, select, textarea {
	color: #222;
}

::-moz-selection {
	background: #b3d4fc;
	text-shadow: none;
}

::selection {
	background: #b3d4fc;
	text-shadow: none;
}

img {
	vertical-align: middle;
}

fieldset {
	border: 0;
	margin: 0;
	padding: 0;
}

textarea {
	resize: vertical;
}

.chromeframe {
	margin: 0.2em 0;
	background: #ccc;
	color: #000;
	padding: 0.2em 0;
}

main p a {
	color: #f03906;
}

main p {
	color: #6c6c6c;
}

body {
	font-family: "segoeui";
	display: inline;
}

h1 {
	font-size: 50px;
}

h2 {
	text-align: center;
	font-size: 30px;
}

p {
	text-align: center;
}

a {
	text-decoration: none;
}

ul {
	list-style: none;
}

main {
	margin: 100px 100px 100px 100px;
}

nav {
	display: flex;
	position: fixed;
	flex-direction: row;
	align-items: center;
	background: #2571b7;
	justify-content: space-around;
	height: 60px;
	width: 100%;
	z-index: 101;
}
</style>
</head>
<body>


	<header class="containerHeader">

		<nav>

			<input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label>


			<ul>
				<li><a class="active"
					href="http://localhost:8080/SistemaAgendamento/">Início</a></li>

				<li><a href="login.jsp">Login</a></li>
			</ul>
		</nav>
		<section></section>
	</header>

	<section class="cover">
		<div class="top_cover">
			</h1>
		</div>
		<div class="top_cover">
			<h1>
				<a href="login.jsp">Bem Vindo! Entre na sua conta</a><br>
				<br>
			</h1>
		</div>
		<div class="top_cover">
			<h2>
				Confira nossa lista de profissionais
				<%
				if (area != null) {
			%>
				em
				<%=area%>
				<%
					}
				%>
			</h2>

			<div style="overflow-x: auto;">
				<table>
					<thead>
						
							<th>CPF</th>
							<th>Nome</th>
							<th>Area</th>
							<th>Especialidade</th>
							<th>Email</th>
						
					</thead>
					<tbody>
						<%
							for (Profissionais profissional : profissionais) {
						%>
						<tr>
							<td><%=profissional.getCpf()%></td>
							<td><%=profissional.getNome()%></td>
							<td><%=profissional.getArea()%></td>
							<td><%=profissional.getEspecialidade()%></td>
							<td><%=profissional.getEmail()%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<br> Selecione a area:
			<form action="" method="POST">
				<input type="text" id="a" name="a" size="20"> <input
					type="submit" value="Pesquisar" />
			</form>

		</div>








	</section>

	<main id="#">
		<p>
			<a>Nesta área,</a> você pode realizar uma busca por médico a partir
			do preenchimento dos campos
		</p>
		</br>
		<p>Quanto maior o número de dados, mais fácil será encontrar o
			profissional que procura.</p>
	</main>

	<section class="container2x5">
		<div>
			<center>
				<h1>Consulta médica</h1>
			</center>
			</br>
			</br>
			<p>Sistema para agendamento de consultas online comprofissionais</p>
		</div>
		<div>
			<ul>
				<li>
					<div id="image_beside" class="_1">

						<h2>Consulta</h2>
						Sistema para agendamento de consultas online comprofissionais
						</p>
					</div>
				</li>
				<li>
					<div id="image_beside" class="_2">

						<h2>Edição</h2>
						Sistema para agendamento de consultas online comprofissionais
						</p>
					</div>
				</li>
				<li>
					<div id="image_beside" class="_3">

						<h2>Remoção</h2>
						Sistema para agendamento de consultas online comprofissionais
						</p>
					</div>
				</li>
				<li>
					<div id="image_beside" class="_4">

						<h2>Agendamento</h2>
						Sistema para agendamento de consultas online comprofissionais
						</p>
					</div>
				</li>
				<li>
					<div id="image_beside" class="_5">

						<h2>Profissionais</h2>
						Sistema para agendamento de consultas online comprofissionais
						</p>
					</div>
				</li>
				<li>
					<div id="image_beside" class="_6">

						<h2>Clientes</h2>
						Sistema para agendamento de consultas online comprofissionais
						</p>
					</div>
				</li>

			</ul>
		</div>
	</section>

</body>
	</html>
</fmt:bundle>