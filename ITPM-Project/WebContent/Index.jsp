<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Aurora Studio | CDE IT Solution</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="CSS/main.css" />

<link rel="stylesheet" href="CSS/style/bootsrtap.min.css">
<script src="CSS/style/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<style>

pre {
	background-color: #fff;
	overflow: auto;
	margin: 0 0 1em;
	padding: .5em 1em;
}

pre code, pre .line-number {
	/* Ukuran line-height antara teks di dalam tag <code> dan <span class="line-number"> harus sama! */
	font: normal normal "Courier New", Courier, Monospace;
	color: #111;
	font-size: 13px;
	display: block;
}

pre .line-number {
	user-select: none;
	float: left;
	padding-top: 80px;	
	text-align: right;
}

pre .line-number span {
	display: block;
	font-size: 15px;
	padding: 0 2em 0 2em;
}

pre .cl {
	display: block;
	clear: both;
}

.vl {
	border-left: 1px solid gray;
	height: 40px;
}

.buttonindex {
	font: normal normal "Courier New", Courier, Monospace;
	color: #111;
	width: 200px;
	higth: 100px;
	float: left;
	font-size: 20px;
	background: #17a2b8;;
}
</style>


</head>
<body>

		

		<!-- Banner -->
			<section id="banner">
				<h1>A U R O R A S T U D I O</h1>
				<p>First we thought the PC was a calculator. Then we found out how to turn numbers into letters with ASCII and we thought it was a typewriter.<br/>Then we discovered graphics, and we thought it was a television. With the World Wide Web, we've realized it's a brochure.</p>
			</section>

		<!-- One -->
			<section id="one" class="wrapper">
				<div class="inner">
					<div class="flex flex-3">
						<div class="col">
							
							<div class="custom-file">
								<input type="file" class="custom-file-input" id="myFile">
									 <label class="custom-file-label"
									for="customFile">Choose file</label>
							</div>
							
							<hr>
							<form id="myF">
			<pre>
							<code>
								<div id="output" style="max-height: 650px; height: 500px">
							</div></code>
			
			</pre>
							</form>
							<script>
								var input = document.getElementById("myFile");
								var output = document.getElementById("output");
					
								input.addEventListener("change", function () {
									  if (this.files && this.files[0]) {
									    var myFile = this.files[0];
									    var reader = new FileReader();
									     document.getElementById('myF').reset();
									    reader.addEventListener('load', function (e) {
											var pre = document.getElementsByTagName('pre'),
									        pl = pre.length;
									        for (var i = 0; i < pl; i++) {
											output.textContent = e.target.result;
									        pre[i].innerHTML = '<span class="line-number"></span>' + pre[i].innerHTML + '<span class="cl"></span>';
									        var num = pre[i].innerHTML.split(/\n/).length;
									        for (var j = 0; j < num; j++) {
									            var line_num = pre[i].getElementsByTagName('span')[0];
									            line_num.innerHTML += '<span>' + (j + 1) + '</span>';
												
									        }
																				   sessionStorage.setItem("Result", output.textContent);
																				   document.getElementById("cont_res").value = sessionStorage.getItem("Result");
																				   document.getElementById("inh_res").value = sessionStorage.getItem("Result");
																				   document.getElementById("size_res").value = sessionStorage.getItem("Result");
																				   document.getElementById("method_res").value = sessionStorage.getItem("Result");
																				   document.getElementById("variable_res").value = sessionStorage.getItem("Result");
																				   document.getElementById("couple_res").value = sessionStorage.getItem("Result");
																				   document.getElementById("summary_res").value = sessionStorage.getItem("Result");
																			}
					
																		});
					
														reader.readAsBinaryString(myFile);
														input.setAttribute("disabled", true);
					
													}
													var file = input.files[0];
													var filename = file.name;
													// Get the file extention.
													var fileExtension = filename.substr((filename
															.lastIndexOf('.') + 1));
													console.log(fileExtension);
					
													// Check the file type.. Should only support for .java and .cpp files only.
													if (fileExtension == 'java') {
														//	editor.session.setMode("ace/mode/java");
														//	alert("I am JAVA!")
													} else if (fileExtension == 'cpp') {
														//editor.session.setMode("ace/mode/c_cpp");
														//	alert("I am c++!");
													} else {
														alert("Invalid file format, Please select java or c++ file!");
														window.location.reload(false);
													}
					
												});
							</script>
							<script>
								// Add the following code if you want the name of the file appear on select
								$(".custom-file-input").on("change",function() {
											var fileName = $(this).val().split("\\").pop();
											$(this).siblings(".custom-file-label").addClass(
													"selected").html(fileName);
										});
							</script>
				
						</div>
												
					</div>
					
				</div>
				
			</section>

		
		<!-- Footer -->
			<footer id="footer" style="padding-left: 200px">
							
								<button class=buttonindex>Size</button>
								
								<button class=buttonindex>Method</button>
								
								<button class=buttonindex>Variable</button>
								
								<button class=buttonindex>Coupling</button>
								
								<button class=buttonindex>Inheritance</button>
								
								<button class=buttonindex>Control Structure</button><br/>
			
			</footer>

		<!-- Scripts -->
			<script src="JS/jquery.min.js"></script>
			<script src="JS/skel.min.js"></script>
			<script src="JS/util.js"></script>
			<script src="JS/main.js"></script>

	</body>
</html>