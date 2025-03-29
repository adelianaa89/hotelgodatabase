<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Go</title>
    <link rel="stylesheet" href="1.css">
</head>
<body>
    <header>
        <div class="hero">
            <nav class="navbar">
                <div class="nav-links">
                    <a href="#">ROOMS</a>
                    <a href="#">OUR SERVICES</a>
                    <a href="#">AMENITIES</a>
                    <a href="#">GALLERY</a>
                </div>
                <div class="nav-right">
                    <a href="#">CONTACTS</a>
                    <a href="about.php">ABOUT US</a>
                    <a href="#">FAQ</a>
                    <a href="tel:08889999333" class="call-btn">
                        <i class="fas fa-phone-alt"></i> 0812 2389 3234
                    </a>
                </div>
            </nav>
            <div class="hero-text">
                <h1>EXPERIENCE</h1>
                <h2>A VACATION WITH CLASS</h2>
                <p>YOU DESERVE IT!</p>
            </div>
        </div>
    </header>

    <section class="booking">
        <div class="booking-container">
            <label>
                <span>Check availability:</span>
                <input type="date">
            </label>
            <input type="date">
            <input type="number" placeholder="Persons">
            <button>Check</button>
        </div>
    </section>
     
<body>
        <section class="team-section">
        <h2 class="team-title">Our Team</h2>
        <div class="team-container">
        <button onclick="showPopup('popup1')">Front End</button>
        <button onclick="showPopup('popup2')">Database</button>
        <button onclick="showPopup('popup3')">Server UI/UX</button>
        <button onclick="showPopup('popup4')">Back End</button>
        </div>
        </section>


        <!-- popup 1 -->
    <div id="popup1" class="popup">
        <div class="popup-content">
            <p><strong>Nama:</strong> Adelia Eka Putri </p>
            <p><strong>NIM:</strong> 23111031028</p>
            <p><strong>Jobs:</strong> Front End</p>
            <button onclick="closePopup('popup1')">Tutup</button>
        </div>
    </div>

        <!-- popup 2 -->
    <div id="popup2" class="popup">
        <div class="popup-content">
            <p><strong>Nama:</strong> Khadeeja Tatsbitha Aydin </p>
            <p><strong>NIM:</strong> 2311103147</p>
            <p><strong>Jobs:</strong> Database</p>
            <button onclick="closePopup('popup2')">Tutup</button>
        </div>
    </div>

        <!-- popup 3 -->
        <div id="popup3" class="popup">
        <div class="popup-content">
            <p><strong>Nama:</strong> Yessi Olivia Sari Purba</p>
            <p><strong>NIM:</strong> 2311103120</p>
            <p><strong>Jobs:</strong> Server UI/UX</p>
            <button onclick="closePopup('popup3')">Tutup</button>
        </div>
    </div>

        <!-- popup 4 -->
    <div id="popup4" class="popup">
        <div class="popup-content">
            <p><strong>Nama:</strong> Leni Marlina Awendu</p>
            <p><strong>NIM:</strong> 2311103124</p>
            <p><strong>Jobs:</strong> Back End</p>
            <button onclick="closePopup('popup4')">Tutup</button>
        </div>
    </div>

    <script>
    function showPopup(id) {
        document.getElementById(id).style.display = "block";
    }

    function closePopup(id) {
        document.getElementById(id).style.display = "none";
    }
</script>
</body>
</html>