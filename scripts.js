document.getElementById("login-form").addEventListener("submit", function(event) {
    event.preventDefault();
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    // Verifica se o email e a senha são válidos (exemplo simples)
    if (email === "usuario@example.com" && password === "senha123") {
        alert("Login bem-sucedido!");
        // Aqui você pode redirecionar para outra página
    } else {
        document.getElementById("error-message").innerText = "Email ou senha incorretos!";
    }
});

document.getElementById("forgot-password-link").addEventListener("click", function(event) {
    event.preventDefault();
    alert("Um link para redefinir a senha foi enviado para o seu email.");
    // Aqui você pode adicionar lógica para redefinir a senha
});
