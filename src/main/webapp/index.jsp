<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Amardeep Agency - Coin Sale & Purchase</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap');

  /* Reset & base */
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }
  body {
    font-family: 'Poppins', sans-serif;
    background: #f5f7fa;
    color: #222;
    min-height: 100vh;
    scroll-behavior: smooth;
  }

  /* Container */
  .container {
    max-width: 1100px;
    padding: 0 20px;
    margin: 0 auto;
  }

  /* Header/Nav */
  header {
    background: #020024;
    background: linear-gradient(90deg, #00d2ff 0%, #3a47d5 100%);
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    box-shadow: 0 4px 15px rgba(0,0,0,0.2);
  }
  nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 60px;
  }
  .logo {
    font-weight: 700;
    color: #fff;
    font-size: 1.7rem;
    letter-spacing: 1.2px;
    user-select: none;
  }
  nav ul {
    list-style: none;
    display: flex;
  }
  nav ul li {
    margin-left: 25px;
  }
  nav ul li a {
    color: #f0f0f0;
    font-weight: 500;
    text-decoration: none;
    font-size: 1rem;
    transition: color 0.3s ease;
  }
  nav ul li a:hover,
  nav ul li a.active {
    color: #ffcb05;
  }

  /* Hero Section */
  #home {
    padding-top: 80px;
    height: 90vh;
    background: linear-gradient(135deg,#3a47d5 0%,#00d2ff 100%);
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: center;
    text-align: center;
    animation: fadeSlideIn 1.2s ease forwards;
  }
  #home h1 {
    font-size: 3rem;
    margin-bottom: 20px;
    text-shadow: 1px 1px 5px rgba(0,0,0,0.3);
  }
  #home p {
    font-size: 1.3rem;
    margin-bottom: 40px;
    font-weight: 300;
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
    text-shadow: 1px 1px 4px rgba(0,0,0,0.2);
  }
  #home button {
    padding: 14px 30px;
    font-size: 1.1rem;
    font-weight: 600;
    border: none;
    cursor: pointer;
    border-radius: 28px;
    background: #ffcb05;
    color: #020024;
    box-shadow: 0 6px 15px rgba(255,203,5,0.5);
    transition: background 0.3s ease, transform 0.3s ease;
  }
  #home button:hover {
    background: #ffc107;
    transform: scale(1.05);
  }

  /* Sections common styling */
  section {
    padding: 80px 20px;
    max-width: 900px;
    margin: 0 auto 80px auto;
    opacity: 0;
    transform: translateY(30px);
    animation-fill-mode: forwards;
    animation-duration: 1s;
    animation-timing-function: ease-out;
  }
  section.show {
    opacity: 1;
    transform: translateY(0);
  }
  section h2 {
    font-size: 2.4rem;
    margin-bottom: 25px;
    font-weight: 600;
    text-align: center;
    color: #020024;
  }
  section p {
    font-size: 1.1rem;
    line-height: 1.6;
    color: #333;
    text-align: center;
  }

  /* About Section */
  #about {
    background: #ffffffdd;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(58,71,213,0.1);
  }

  /* Contact Section */
  #contact {
    background: #ffffffdd;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(58,71,213,0.1);
  }
  #contact form {
    display: flex;
    flex-direction: column;
    max-width: 420px;
    margin: 0 auto;
  }
  #contact form input,
  #contact form textarea {
    padding: 12px 15px;
    margin-bottom: 18px;
    border-radius: 6px;
    border: 2px solid #ddd;
    font-size: 1rem;
    transition: border-color 0.3s ease;
    resize: vertical;
  }
  #contact form input:focus,
  #contact form textarea:focus {
    outline: none;
    border-color: #3a47d5;
  }
  #contact form button {
    background: #3a47d5;
    color: white;
    border: none;
    border-radius: 25px;
    padding: 14px 0;
    font-size: 1.1rem;
    font-weight: 600;
    cursor: pointer;
    transition: background 0.3s ease;
  }
  #contact form button:hover {
    background: #585ee9;
  }

  /* Login Section */
  #login {
    background: #ffffffdd;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(58,71,213,0.1);
    max-width: 420px;
    margin: 0 auto 80px auto;
    padding: 40px 30px;
  }
  #login h3 {
    margin-bottom: 30px;
    text-align: center;
    font-weight: 700;
    color: #020024;
  }
  #login form {
    display: flex;
    flex-direction: column;
  }
  #login form input {
    padding: 12px 15px;
    margin-bottom: 18px;
    border-radius: 8px;
    border: 2px solid #ddd;
    font-size: 1rem;
    transition: border-color 0.3s ease;
  }
  #login form input:focus {
    outline: none;
    border-color: #3a47d5;
  }
  #login form button {
    background: #ffcb05;
    border: none;
    border-radius: 25px;
    padding: 14px 0;
    font-size: 1.1rem;
    font-weight: 600;
    cursor: pointer;
    transition: background 0.3s ease;
    color: #020024;
  }
  #login form button:hover {
    background: #ffc107;
  }
  #login .logout-btn {
    margin-top: 20px;
    background: #d64541;
    color: white;
    font-weight: 600;
  }
  #login .logout-btn:hover {
    background: #e74c3c;
  }
  #login .error {
    color: #d64541;
    margin-bottom: 10px;
    font-weight: 600;
    text-align: center;
  }

  /* Buy/Sell Section (shown after login) */
  #trade {
    max-width: 540px;
    background: #ffffffdd;
    border-radius: 12px;
    box-shadow: 0 15px 35px rgba(0,0,0,0.1);
    margin: 40px auto 80px auto;
    padding: 40px 30px;
    opacity: 0;
    transform: translateY(30px);
    animation-fill-mode: forwards;
    animation-duration: 1s;
    animation-timing-function: ease-out;
  }
  #trade.show {
    opacity: 1;
    transform: translateY(0);
  }
  #trade h3 {
    text-align: center;
    margin-bottom: 30px;
    font-weight: 700;
    color: #020024;
  }
  #trade form {
    display: flex;
    flex-direction: column;
  }
  #trade form label {
    margin-bottom: 6px;
    font-weight: 500;
    color: #333;
  }
  #trade form input {
    padding: 12px 15px;
    margin-bottom: 18px;
    border-radius: 8px;
    border: 2px solid #ddd;
    font-size: 1rem;
    transition: border-color 0.3s ease;
  }
  #trade form input:focus {
    outline: none;
    border-color: #3a47d5;
  }
  #trade form button {
    background: #3a47d5;
    border: none;
    border-radius: 25px;
    padding: 14px 0;
    font-size: 1.1rem;
    font-weight: 600;
    color: white;
    cursor: pointer;
    transition: background 0.3s ease;
  }
  #trade form button:hover {
    background: #585ee9;
  }
  #trade .success-msg {
    color: #2ecc71;
    font-weight: 600;
    margin-top: 10px;
    text-align: center;
  }

  /* Footer */
  footer {
    text-align: center;
    padding: 20px 10px;
    background: #020024;
    background: linear-gradient(90deg, #3a47d5 0%, #00d2ff 100%);
    color: white;
    font-weight: 500;
    letter-spacing: 1.1px;
  }

  /* Animations */
  @keyframes fadeSlideIn {
    0% {
      opacity: 0;
      transform: translateY(60px);
    }
    100% {
      opacity: 1;
      transform: translateY(0);
    }
  }
</style>
</head>
<body>

<header>
  <div class="container">
    <nav>
      <div class="logo">Amardeep Agency</div>
      <ul id="nav-links">
        <li><a href="#home" class="active">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#contact">Contact</a></li>
        <li><a href="#login" id="loginNav">Login</a></li>
      </ul>
    </nav>
  </div>
</header>

<!-- Home Section -->
<section id="home" aria-label="Home section">
  <h1>Buy and Sell Coins with Confidence</h1>
  <p>Welcome to Amardeep Agency - Your trusted partner for coin transactions. Secure, fast, and reliable.</p>
  <button id="scrollToLoginBtn" aria-label="Go to Login Section">Get Started</button>
</section>

<!-- About Section -->
<section id="about" aria-label="About Amardeep Agency">
  <h2>About Us</h2>
  <p>At Amardeep Agency, we specialize in buying and selling rare and valuable coins. Our expert team ensures secure and seamless transactions for enthusiasts and investors alike. Join us and experience reliable trading with transparency and great customer support.</p>
</section>

<!-- Contact Section -->
<section id="contact" aria-label="Contact us section">
  <h2>Contact Us</h2>
  <form id="contactForm" aria-describedby="contactInfo">
    <input type="text" id="contactName" name="contactName" placeholder="Your Name" required aria-required="true" />
    <input type="email" id="contactEmail" name="contactEmail" placeholder="Your Email" required aria-required="true" />
    <textarea id="contactMessage" name="contactMessage" placeholder="Your Message" rows="5" required aria-required="true"></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<!-- Login Section -->
<section id="login" aria-label="User Login and Registration">
  <h3 id="loginTitle">User Login</h3>
  <div id="loginError" class="error" aria-live="assertive"></div>
  <form id="loginForm">
    <input type="text" id="username" name="username" placeholder="Username" required aria-required="true" autocomplete="username" />
    <input type="password" id="password" name="password" placeholder="Password" required aria-required="true" autocomplete="current-password" />
    <button type="submit" id="loginSubmitBtn">Login</button>
  </form>
  <button id="logoutBtn" class="logout-btn" style="display:none;">Logout</button>
  <p style="text-align:center; margin-top: 15px; font-size:0.9rem; color:#555;">Not registered? <a href="#" id="toggleRegister">Create an account</a></p>
</section>

<!-- Trade Section (buy/sell) -->
<section id="trade" aria-label="Buy and sell coins section" style="display:none;">
  <h3>Trade Coins</h3>
  <form id="buyForm" aria-label="Buy coins form">
    <label for="buyAmount">Buy Coins (Quantity):</label>
    <input type="number" id="buyAmount" name="buyAmount" min="1" placeholder="Enter quantity to buy" required />
    <button type="submit">Buy Coins</button>
    <div id="buySuccess" class="success-msg" aria-live="polite"></div>
  </form>
  <hr style="margin: 30px 0;">
  <form id="sellForm" aria-label="Sell coins form">
    <label for="sellAmount">Sell Coins (Quantity):</label>
    <input type="number" id="sellAmount" name="sellAmount" min="1" placeholder="Enter quantity to sell" required />
    <button type="submit">Sell Coins</button>
    <div id="sellSuccess" class="success-msg" aria-live="polite"></div>
  </form>
</section>

<footer>
  &copy; 2024 Amardeep Agency. All rights reserved.
</footer>

<script>
  // Navigation active link highlight on scroll
  const navLinks = document.querySelectorAll('nav ul li a');
  const sections = ['home', 'about', 'contact', 'login'];
  window.addEventListener('scroll', () => {
    let scrollY = window.pageYOffset;
    sections.forEach(id => {
      const section = document.getElementById(id);
      if(section) {
        const sectionTop = section.offsetTop - 80;
        const sectionHeight = section.offsetHeight;
        if(scrollY >= sectionTop && scrollY < sectionTop + sectionHeight) {
          navLinks.forEach(link => link.classList.remove('active'));
          const activeLink = document.querySelector(`nav ul li a[href="#${id}"]`);
          if(activeLink) activeLink.classList.add('active');
        }
      }
    });
  });

  // Smooth scroll for buttons and nav links
  document.getElementById('scrollToLoginBtn').addEventListener('click', () => {
    document.getElementById('login').scrollIntoView({behavior: 'smooth'});
  });

  navLinks.forEach(link => {
    link.addEventListener('click', e => {
      e.preventDefault();
      const targetId = link.getAttribute('href').slice(1);
      document.getElementById(targetId).scrollIntoView({behavior: 'smooth'});
    });
  });

  // Animation reveal on scroll for sections except home
  const animatedSections = document.querySelectorAll('section:not(#home)');
  const revealOnScroll = () => {
    animatedSections.forEach(section => {
      const rect = section.getBoundingClientRect();
      if(rect.top < window.innerHeight * 0.85) {
        section.classList.add('show');
      }
    });
  };
  window.addEventListener('scroll', revealOnScroll);
  revealOnScroll();

  // Simple front-end user authentication and coin trade simulation using localStorage
  const loginForm = document.getElementById('loginForm');
  const loginError = document.getElementById('loginError');
  const logoutBtn = document.getElementById('logoutBtn');
  const tradeSection = document.getElementById('trade');
  const loginTitle = document.getElementById('loginTitle');
  const loginSubmitBtn = document.getElementById('loginSubmitBtn');
  const toggleRegisterLink = document.getElementById('toggleRegister');
  let isRegistering = false;

  // Users database simulation in localStorage (key: 'users')
  // Stored as JSON object like {username: {password: "...", coins: number}}
  const getUsers = () => JSON.parse(localStorage.getItem('users') || '{}');
  const setUsers = users => localStorage.setItem('users', JSON.stringify(users));

  // Current logged in user key: 'currentUser'
  const getCurrentUser = () => localStorage.getItem('currentUser');
  const setCurrentUser = username => localStorage.setItem('currentUser', username);
  const clearCurrentUser = () => localStorage.removeItem('currentUser');

  // Utility: Update UI based on login state
  function updateUIForLogin() {
    const user = getCurrentUser();
    const navLoginLink = document.getElementById('loginNav');
    if(user) {
      loginForm.style.display = 'none';
      logoutBtn.style.display = 'block';
      tradeSection.style.display = 'block';
      loginTitle.textContent = `Welcome, ${user}`;
      loginSubmitBtn.disabled = true;
      toggleRegisterLink.style.display = 'none';
      navLoginLink.textContent = 'Logout';
      navLoginLink.href = '#login';
      clearLoginError();
      clearTradeMessages();
    } else {
      loginForm.style.display = 'flex';
      logoutBtn.style.display = 'none';
      tradeSection.style.display = 'none';
      loginTitle.textContent = 'User Login';
      loginSubmitBtn.disabled = false;
      toggleRegisterLink.style.display = 'inline';
      navLoginLink.textContent = 'Login';
      navLoginLink.href = '#login';
      clearLoginError();
      clearTradeMessages();
    }
  }

  function clearLoginError() {
    loginError.textContent = '';
  }
  function clearTradeMessages() {
    document.getElementById('buySuccess').textContent = '';
    document.getElementById('sellSuccess').textContent = '';
  }

  // Handle logout button
  logoutBtn.addEventListener('click', () => {
    clearCurrentUser();
    updateUIForLogin();
  });

  // Handle login form submit
  loginForm.addEventListener('submit', e => {
    e.preventDefault();
    const username = loginForm.username.value.trim();
    const password = loginForm.password.value.trim();
    if(!username || !password) {
      loginError.textContent = 'Please enter both username and password.';
      return;
    }
    let users = getUsers();
    if(isRegistering) {
      if(users[username]) {
        loginError.textContent = 'This username is already taken. Please choose another.';
        return;
      }
      // Register new user
      users[username] = { password: password, coins: 0 };
      setUsers(users);
      setCurrentUser(username);
      isRegistering = false;
      alert('Registration successful! You are now logged in.');
      updateUIForLogin();
    } else {
      // Login flow
      if(!users[username] || users[username].password !== password) {
        loginError.textContent = 'Invalid username or password.';
        return;
      }
      // Success
      setCurrentUser(username);
      updateUIForLogin();
    }
    loginForm.reset();
  });

  // Toggle register and login mode link
  toggleRegisterLink.addEventListener('click', e => {
    e.preventDefault();
    isRegistering = !isRegistering;
    if(isRegistering) {
      loginTitle.textContent = 'User Registration';
      loginSubmitBtn.textContent = 'Register';
      toggleRegisterLink.textContent = 'Already have an account? Login';
      clearLoginError();
    } else {
      loginTitle.textContent = 'User Login';
      loginSubmitBtn.textContent = 'Login';
      toggleRegisterLink.textContent = 'Create an account';
      clearLoginError();
    }
    loginForm.reset();
  });

  // Buy and sell forms handlers
  const buyForm = document.getElementById('buyForm');
  const sellForm = document.getElementById('sellForm');
  const buySuccess = document.getElementById('buySuccess');
  const sellSuccess = document.getElementById('sellSuccess');

  buyForm.addEventListener('submit', e => {
    e.preventDefault();
    clearTradeMessages();
    const qty = Number(buyForm.buyAmount.value);
    if(qty <= 0 || !Number.isInteger(qty)) {
      buySuccess.textContent = 'Please enter a valid quantity.';
      buySuccess.style.color = '#d64541';
      return;
    }
    let user = getCurrentUser();
    if(!user) {
      buySuccess.textContent = 'Please login first.';
      buySuccess.style.color = '#d64541';
      return;
    }
    let users = getUsers();
    users[user].coins = (users[user].coins || 0) + qty;
    setUsers(users);
    buySuccess.textContent = `Successfully purchased ${qty} coins! You now have ${users[user].coins} coins.`;
    buySuccess.style.color = '#2ecc71';
    buyForm.reset();
  });

  sellForm.addEventListener('submit', e => {
    e.preventDefault();
    clearTradeMessages();
    const qty = Number(sellForm.sellAmount.value);
    if(qty <= 0 || !Number.isInteger(qty)) {
      sellSuccess.textContent = 'Please enter a valid quantity.';
      sellSuccess.style.color = '#d64541';
      return;
    }
    let user = getCurrentUser();
    if(!user) {
      sellSuccess.textContent = 'Please login first.';
      sellSuccess.style.color = '#d64541';
      return;
    }
    let users = getUsers();
    let currentCoins = users[user].coins || 0;
    if(qty > currentCoins) {
      sellSuccess.textContent = `You do not have enough coins to sell. Your balance: ${currentCoins}`;
      sellSuccess.style.color = '#d64541';
      return;
    }
    users[user].coins = currentCoins - qty;
    setUsers(users);
    sellSuccess.textContent = `Successfully sold ${qty} coins! You now have ${users[user].coins} coins left.`;
    sellSuccess.style.color = '#2ecc71';
    sellForm.reset();
  });

  // Initialize UI
  updateUIForLogin();

  // Contact form dummy handler
  document.getElementById('contactForm').addEventListener('submit', e => {
    e.preventDefault();
    alert('Thank you for contacting Amardeep Agency. We will get back to you shortly!');
    e.target.reset();
  });
</script>

</body>
</html>

