<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Destinations</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 50px;
            background: rgba(20, 20, 20, 0.9);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar .logo img {
            height: 40px;
        }

        .nav-links, .nav-right {
            display: flex;
            gap: 20px;
        }

        .nav-links a, .nav-right a {
            color: white;
            text-decoration: none;
            font-weight: 600;
            padding: 5px 10px;
        }

        .call-btn {
            background: white;
            color: black;
            padding: 8px 15px;
            border-radius: 20px;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        /* Section: Destinations */
        .destinations {
            max-width: 1200px;
            margin: 100px auto 50px;
            padding: 20px;
            text-align: center;
        }

        .destinations h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        /* Grid Layout */
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            justify-content: center;
        }

        .card {
            background: #1c1c1c;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s ease;
        }

        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .info {
            padding: 15px;
            text-align: left;
        }

        .info h3 {
            font-size: 1.2rem;
            margin-bottom: 5px;
        }

        .info p {
            font-size: 0.9rem;
            color: #ccc;
        }

        .info button {
            background: white;
            color: black;
            border: none;
            padding: 8px 12px;
            margin-top: 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .info button:hover {
            background: gray;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar">
        <a href="#" class="logo">
            <img src="logo.png" alt="Hotel Logo">
        </a>
        <div class="nav-links">
            <a href="#">ROOMS</a>
            <a href="#">OUR SERVICES</a>
            <a href="#">AMENITIES</a>
            <a href="#">GALLERY</a>
        </div>
        <div class="nav-right">
            <a href="#">CONTACTS</a>
            <a href="#">ABOUT US</a>
            <a href="#">FAQ</a>
            <a href="tel:08889999333" class="call-btn">
                <i class="fas fa-phone-alt"></i> 0888 9999 3333
            </a>
        </div>
    </nav>

    <!-- Section: Explore More Destination -->
    <section class="destinations">
        <h2>Explore More Destination</h2>
        <div class="grid-container">

            <?php
            // Array hotel (Bisa dikembangkan dengan database)
            $hotels = [
                ["name" => "Roynet Hotel", "location" => "Mapo-gu, Seoul, South Korea", "image" => "images/image1.jpg"],
                ["name" => "The Berkeley Hotel", "location" => "Bangkok, Thailand", "image" => "images/image2.jpg"],
                ["name" => "Shangri La Hotel", "location" => "London, UK", "image" => "images/image3.jpg"],
                ["name" => "Ecozy Dijiwa", "location" => "Bali, Indonesia", "image" => "images/image4.jpg"],
                ["name" => "Grand Prince Hotel", "location" => "Tokyo, Japan", "image" => "images/image5.jpg"],
                ["name" => "Chateau de Briançon", "location" => "Bauné, France", "image" => "images/image6.jpg"],
                ["name" => "Bohol Coastal Hotel", "location" => "Tawala, Philippines", "image" => "images/image7.jpg"],
                ["name" => "Rezel Select Hotel", "location" => "Huadu, China", "image" => "images/image8.jpg"]
            ];

            // Looping untuk menampilkan hotel
            foreach ($hotels as $hotel) {
                echo '<div class="card">';
                echo '<img src="' . $hotel["image"] . '" alt="' . $hotel["name"] . '">';
                echo '<div class="info">';
                echo '<h3>' . $hotel["name"] . '</h3>';
                echo '<p>🌍 ' . $hotel["location"] . '</p>';
                echo '<button>View Details →</button>';
                echo '</div>';
                echo '</div>';
            }
            ?>
            
        </div>
    </section>

</body>
</html>
