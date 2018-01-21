<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<head>
<TITLE> TEST </TITLE>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<script type="text/javascript">
		function checkPwd(){
			//alert("checkPwd");
			//alert(document.getElementById("id").value);
			/*
				1. 비밀번호는 영문+숫자혼용 (10자리 이상)
				2. 특수문자 + 영문+숫자혼용 (8자리 이상)
				3. 아이디와 동일한 비밀번호 사용 금지
				4. 연속된문자 금지 (ex. 1234 , 2345, abcd , bcde)
				5. 키보드상 연속된 배열(asdf , qwer) 금지
			*/
			
			var idValue = document.getElementById("id").value;
			var pwdValue = document.getElementById("pwd").value;			
			
			//console.log("id = " + idValue);
			//console.log("pwd = " + pwdValue);
			
			// 연속된 숫자 체크 
			var regexpNum = "/[0-9]{5}/g";						
			// 특수문자 유무 
			 var sCheck = pwdValue.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			// 한글 유무 
			var kCheck = pwdValue.search(/([가-힣ㄱ-ㅎㅏ-ㅣ\x20])/i);
			// 같은 영문, 숫자 두번 이상 사용 체크 
			var aCheck = pwdValue.search( /(\w)\1\1\1/);
			// /(\w)\1\1\1/; // 같은 영문자&숫자 연속 4번 정규식
			// 연속된 숫자 정규식 
			var nCheck = pwdValue.search(/(0123)|(1234)|(2345)|(3456)|(4567)|(5678)|(6789)|(7890)/);
			// 연속된 영문자 정규식 
			var eCheck = pwdValue.search(/(abcd)|(bcde)|(cdef)|(defg)|(efgh)|(fghi)|(ghij)|(hijk)|(ijkl)|(jklm)|(klmn)|(lmno)|(mnop)|(nopq)|(opqr)|(pqrs)|(qrst)|(rstu)|(stuv)|(tuvw)|(uvwx)|(vwxy)|(wxyz)/);
			// 키보드상 연속된 문자 정규식 
			var mCheck = pwdValue.search(/(qwer)|(wert)|(erty)|(rtyu)|(tyui)|(yuio)|(uiop)|(asdf)|(sdfg)|(dfgh)|(fghj)|(ghjk)|(hjkl)|(zxcv)|(xcvb)|(cvbn)|(vbnm)/);
			//console.log("regexpNum = " + pwdValue.match(regexpNum));
			 //console.log("sCheck = " + sCheck);
			 //console.log("kCheck = " + kCheck);
			 //console.log("aCheck = " + aCheck);
			 //console.log("nCheck = " + nCheck);
			  //console.log("eCheck = " + eCheck);
			  
			
			
			if(sCheck < 0){
				// 1. 비밀번호는 영문+숫자혼용 (10 자리 이상)
				if(pwdValue.length < 10){
					alert("비밀번호는 영문+숫자혼용 10자리 이상으로 입력하여 주세요");
					document.getElementById("pwd").focus();
					return false;
				}else{
					if(pwdValue.search(/[0-9]/g) < 0 || pwdValue.search(/[a-z]/ig) < 0){
						alert("비밀번호는 영문자+숫자를 혼용하여야 합니다. ");
						document.getElementById("pwd").focus();
						return false;
					}
				}
			}else{
				// 2. 비밀번호는 특수문자 + 영문 + 숫자혼용 (8자리 이상)
				if(pwdValue.length < 8){
					alert("비밀번호는 특수문자+영문+숫자혼용 8자리 이상으로 입력하여 주세요")	;
					document.getElementById("pwd").focus();
					return false;
				}
			}
			
			// 비밀번호 길이 제한 
			if(pwdValue.length > 30){
				alert("비밀번호는 30자를 넘어서 사용하실 수 없습니다. ");
				document.getElementById("pwd").focus();
				return false;
			}
			
			// 3. 아이디와 동일한 비밀번호 사용 금지 
			if(idValue == pwdValue){
				alert("아이디와 동일한 비밀번호는 사용하실 수 없습니다. ");
				document.getElementById("pwd").focus();
				return false;
			}
			
			// 4. 연속된문자 금지 (ex. 1234 , 2345, abcd , bcde)
			// 연속된 숫자 체크 
			 if(nCheck > -1){
				 alert("비밀번호는 연속된 숫자 (예.1234) 를 사용하실 수 없습니다. ");
				 document.getElementById("pwd").focus();
				 return false;
			 }
			 
			// 연속된 문자 체크 
			 if(eCheck > -1){
				 alert("비밀번호는 연속된 영문자 (예.abcd) 를 사용하실 수 없습니다. ");
				 document.getElementById("pwd").focus();
				 return false;
			 } 
			
			
			// 5. 키보드상 연속된 배열(asdf , qwer) 금지 
			// 키보드상 연속된 문자 체크 
			 if(mCheck > -1){
				 alert("비밀번호는 연속된 영문자 (예.qwer) 를 사용하실 수 없습니다. ");
				 document.getElementById("pwd").focus();
				 return false;
			 }
			
			
			// 추가 로직 (필요없으면 삭제 하면 됩니다. )
			
			// 비밀번호 없을시 입력 메시지 
			if(pwdValue.length < 1){
				alert("비밀번호를 입력하세요");
				 document.getElementById("pwd").focus();
				return false;
			}
			
			// 공백체크 
			if(pwdValue.indexOf(' ') > -1){
				alert("비밀번호에 공백은 포함될 수 없습니다. ");
				 document.getElementById("pwd").focus();
				return false;
			}
			
			 //한글 포함 유무 
			 if(kCheck > -1){
				 alert("비밀번호는 한글이 포함될 수 없습니다.");
				 document.getElementById("pwd").focus();
				 return false;
			 }
			 
			// 연속된 영문자 , 숫자 체크 
			 if(aCheck > -1){
				 alert("비밀번호는 같은 영문,숫자를 4번이상 사용하실 수 없습니다. ");
				 document.getElementById("pwd").focus();
				 return false;
			 }
			
			// validateion Check Pass !!
			alert("성공!");
			// submit();
					
		}
	</script>
</head>
<body>
	
	<div>
		아이디 : <input type="text" id="id" name="id">
		<br/>
		비밀번호 : <input type="password" id="pwd" name="pwd" onkeypress="if(event.keyCode==13) {javascript:checkPwd(); return false;}">
		<br/><br/>
		<input type="button" id="confirm" name="confirm" value="확인" onclick="javascript:checkPwd();"/>
		<input type="button" id="cancel" name="cancel" value="취소"/>
	</div>
	
</body>
</html>
