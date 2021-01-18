
    var lastName = document.getElementById("lastname");
    var firstName = document.getElementById("firstname");
    var email = document.getElementById("email");
    var password = document.getElementById("password").value;
    var password2 = document.getElementById("psw-repeat").value


var checking = function() {
    var lastName = document.getElementById("lastname").value;
    if (lastName == "") {
        alert ("Vui lòng nhập Họ");
        return false;
    } else {
        var lastName = document.getElementById("lastname").style.border = "3px solid green";
    }
    // Kiểm tra tên
    var firstName = document.getElementById("firstname").value;
    if (firstName == "") {
        alert ("Vui lòng nhập tên");
        return false;
    } else {
        var firstName = document.getElementById("firstname").style.border = "3px solid green";
    }
    
    // kiểm tra email
    var email = document.getElementById("email").value;
    var emailValid = "[a-z0-9.%+-]+@[a-z0-9.-]+\.[a-z]{2,}$";
    if (email == "") {
        alert("Vui lòng nhập Email");
        return false;
    } else if (email.match(emailValid)) {        
        var email = document.getElementById("email").style.border = "3px solid green";
    }else {
        alert("Email chưa đúng định dạng");    
    }
    // kiểm tra mật khẩu
    var password = document.getElementById("password").value;
    if (password == "") {
        alert("chưa nhập mật khẩu");
        return false;
    } else {
        document.getElementById("password").style.border = "3px solid green";;
    }
    var password2 = document.getElementById("psw-repeat").value;
    if (password2 == "") {
        alert("vui lòng nhập lai mật khẩu");
        return false;
    } else {
        document.getElementById("psw-repeat").style.border = "3px solid green";;
    }
    if(password !== password2) {
        alert("mật khẩu chưa khớp")
        return false;
    }else {
        document.getElementById("password").style.border = "3px solid green";
        document.getElementById("psw-repeat").style.border = "3px solid green";
    }
    var yearBorn =document.getElementById("year").value;
    var option = document.getElementsByTagName("option[0]").value;
    
    if (yearBorn == option) {
        alert("vui lòng chọn năm sinh");
    }else {
        document.getElementById("year").style.border = "3px solid green";
    }
    var male = document.getElementById("male").checked;
    var female = document.getElementById("female").checked;

    if (!male && !female) {
        alert ("Vui lòng nhập giới tính");
        return false;
    }return true;
}   
var getInfo = function() {
    if(checking()) {
        alert ("Đăng nhập thành công");
    }
}