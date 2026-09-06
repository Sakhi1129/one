<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · modern UI</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Syne:wght@700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #fafbfc;
      color: #0f1a2c;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    :root {
      --primary: #0f1a2c;
      --accent: #7c3aed;
      --accent-light: #a78bfa;
      --surface: #ffffff;
      --gray: #6b7280;
      --border: #e9edf4;
      --radius: 20px;
      --shadow: 0 12px 32px rgba(0, 0, 0, 0.04), 0 4px 12px rgba(0, 0, 0, 0.02);
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header */
    .header {
      background: rgba(255, 255, 255, 0.8);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
      position: sticky;
      top: 0;
      z-index: 100;
      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 16px 0;
      gap: 16px;
      flex-wrap: wrap;
    }

    .brand {
      font-family: 'Syne', sans-serif;
      font-weight: 800;
      font-size: 26px;
      letter-spacing: -0.02em;
      display: flex;
      align-items: center;
      gap: 6px;
      color: var(--primary);
    }
    .brand span {
      color: var(--accent);
    }

    .nav-links {
      display: flex;
      gap: 28px;
      font-weight: 500;
      font-size: 0.95rem;
    }
    .nav-links a {
      color: var(--primary);
      text-decoration: none;
      transition: 0.2s;
      border-bottom: 2px solid transparent;
      padding-bottom: 4px;
    }
    .nav-links a:hover {
      border-bottom-color: var(--accent);
      color: var(--accent);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 18px;
    }
    .header-actions .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      cursor: pointer;
      transition: 0.2s;
    }
    .header-actions .icon-btn:hover {
      color: var(--accent);
    }

    .cart-badge {
      position: relative;
      display: inline-flex;
    }
    .cart-badge .count {
      position: absolute;
      top: -10px;
      right: -12px;
      background: var(--accent);
      color: white;
      font-weight: 700;
      font-size: 0.7rem;
      width: 22px;
      height: 22px;
      border-radius: 30px;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 4px 8px rgba(124, 58, 237, 0.3);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border: 1px solid var(--border);
      border-radius: 60px;
      padding: 4px 8px 4px 18px;
      transition: 0.2s;
      box-shadow: 0 2px 6px rgba(0,0,0,0.02);
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 0 3px rgba(124,58,237,0.15);
    }
    .search-wrap input {
      border: none;
      outline: none;
      font-size: 0.9rem;
      background: transparent;
      min-width: 160px;
      padding: 8px 0;
    }
    .search-wrap button {
      background: transparent;
      border: none;
      padding: 8px 14px;
      color: var(--gray);
      cursor: pointer;
      transition: 0.2s;
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.5rem;
      cursor: pointer;
      color: var(--primary);
    }

    /* hero */
    .hero {
      background: linear-gradient(145deg, #f0f4ff 0%, #ffffff 100%);
      border-radius: 0 0 48px 48px;
      padding: 64px 0 80px;
      margin-bottom: 32px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -20%;
      top: -30%;
      width: 600px;
      height: 600px;
      background: radial-gradient(circle at 30% 40%, rgba(124,58,237,0.08), transparent 70%);
      border-radius: 50%;
      z-index: 0;
    }
    .hero .container {
      position: relative;
      z-index: 2;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 40px;
      flex-wrap: wrap;
    }
    .hero-content {
      max-width: 560px;
    }
    .hero-content h1 {
      font-family: 'Syne', sans-serif;
      font-weight: 800;
      font-size: 3.4rem;
      line-height: 1.1;
      letter-spacing: -0.03em;
      color: var(--primary);
      margin-bottom: 16px;
    }
    .hero-content h1 i {
      color: var(--accent);
      font-weight: 300;
    }
    .hero-content p {
      font-size: 1.1rem;
      color: #3a4a5e;
      margin-bottom: 28px;
      max-width: 440px;
    }
    .hero-actions {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
    }
    .btn {
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: none;
      font-size: 0.95rem;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      cursor: pointer;
      transition: 0.2s;
      background: white;
      color: var(--primary);
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
    }
    .btn-primary {
      background: var(--primary);
      color: white;
      box-shadow: 0 8px 20px rgba(15,26,44,0.2);
    }
    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 14px 28px rgba(15,26,44,0.25);
    }
    .btn-outline {
      border: 1px solid var(--border);
      background: white;
    }
    .btn-outline:hover {
      border-color: var(--accent);
      color: var(--accent);
    }
    .hero-visual {
      flex: 1;
      min-width: 200px;
      display: flex;
      justify-content: flex-end;
    }
    .hero-visual img {
      max-width: 100%;
      width: 420px;
      border-radius: 30px;
      box-shadow: 0 24px 60px rgba(0,0,0,0.04);
    }

    /* section */
    .section {
      padding: 48px 0 32px;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      flex-wrap: wrap;
      margin-bottom: 28px;
    }
    .section-header h2 {
      font-family: 'Syne', sans-serif;
      font-weight: 700;
      font-size: 2rem;
      letter-spacing: -0.02em;
    }
    .section-header .link {
      color: var(--accent);
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      text-decoration: none;
      font-size: 0.95rem;
    }
    .section-header .link i {
      transition: 0.2s;
    }
    .section-header .link:hover i {
      transform: translateX(6px);
    }

    /* categories */
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 18px;
    }
    .category-card {
      background: white;
      border-radius: 18px;
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.2s;
      border: 1px solid rgba(0,0,0,0.02);
      cursor: pointer;
    }
    .category-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.05);
      border-color: var(--accent-light);
    }
    .category-card .icon {
      font-size: 2.2rem;
      color: var(--accent);
      margin-bottom: 8px;
    }
    .category-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 24px;
    }
    .product-card {
      background: white;
      border-radius: 20px;
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.25s;
      border: 1px solid #f1f4fa;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: 0 24px 48px rgba(0,0,0,0.05);
    }
    .product-card .image {
      height: 210px;
      background: #f6f8fc;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 16px;
    }
    .product-card .image img {
      max-height: 100%;
      max-width: 100%;
      object-fit: contain;
    }
    .product-card .body {
      padding: 18px 16px 16px;
      flex: 1;
      display: flex;
      flex-direction: column;
    }
    .product-card .body .title {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 6px;
    }
    .product-card .body .category-tag {
      font-size: 0.75rem;
      color: var(--gray);
      text-transform: uppercase;
      letter-spacing: 0.03em;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      margin: 12px 0 10px;
    }
    .product-card .body .price {
      font-weight: 700;
      font-size: 1.25rem;
    }
    .product-card .body .old {
      color: var(--gray);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .product-card .body .rating {
      color: #fbbf24;
      font-size: 0.85rem;
      letter-spacing: 2px;
    }
    .product-card .actions {
      display: flex;
      gap: 10px;
      margin-top: 6px;
      padding: 0 16px 16px;
    }
    .product-card .actions button {
      flex: 1;
      padding: 10px 0;
      border: none;
      border-radius: 40px;
      font-weight: 600;
      background: var(--primary);
      color: white;
      cursor: pointer;
      transition: 0.2s;
      font-size: 0.9rem;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .actions button:hover {
      background: var(--accent);
    }
    .product-card .actions .wish {
      flex: 0 0 48px;
      background: #f0f2f6;
      color: var(--primary);
    }
    .product-card .actions .wish:hover {
      background: #fee2e2;
      color: #dc2626;
    }

    .badge {
      display: inline-block;
      background: var(--accent);
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      padding: 2px 12px;
      border-radius: 20px;
      letter-spacing: 0.02em;
    }

    /* deal banner */
    .deal-banner {
      background: linear-gradient(135deg, #0f1a2c 0%, #1e2a44 100%);
      border-radius: 32px;
      padding: 32px 40px;
      color: white;
      display: flex;
      align-items: center;
      flex-wrap: wrap;
      gap: 32px;
      margin: 24px 0 16px;
    }
    .deal-banner .info {
      flex: 1;
      min-width: 200px;
    }
    .deal-banner .info h3 {
      font-size: 2rem;
      font-family: 'Syne', sans-serif;
      font-weight: 700;
    }
    .deal-banner .info .desc {
      opacity: 0.7;
      margin: 6px 0 14px;
    }
    .deal-banner .timer {
      display: flex;
      gap: 14px;
    }
    .deal-banner .timer .box {
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(6px);
      padding: 12px 12px 8px;
      border-radius: 16px;
      text-align: center;
      min-width: 70px;
      border: 1px solid rgba(255,255,255,0.04);
    }
    .deal-banner .timer .box .num {
      font-size: 2rem;
      font-weight: 700;
      line-height: 1.2;
    }
    .deal-banner .timer .box .label {
      font-size: 0.7rem;
      opacity: 0.5;
      text-transform: uppercase;
    }
    .deal-banner .price-block {
      display: flex;
      align-items: center;
      gap: 16px;
      flex-wrap: wrap;
    }
    .deal-banner .price-block .current {
      font-size: 2rem;
      font-weight: 700;
    }
    .deal-banner .price-block .old {
      opacity: 0.5;
      text-decoration: line-through;
      font-size: 1.1rem;
    }
    .deal-banner .price-block .discount {
      background: #ef4444;
      padding: 4px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.9rem;
    }

    /* testimonial */
    .testimonial-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 24px;
    }
    .testi-card {
      background: white;
      border-radius: 20px;
      padding: 24px;
      box-shadow: var(--shadow);
      border: 1px solid #f1f4fa;
    }
    .testi-card .stars {
      color: #fbbf24;
      letter-spacing: 2px;
      margin-bottom: 6px;
    }
    .testi-card p {
      font-size: 0.95rem;
      color: #2a3a4e;
      margin: 6px 0 14px;
    }
    .testi-card .user {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testi-card .user .avatar {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      background: #dbeafe;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: var(--accent);
    }

    /* newsletter */
    .newsletter-box {
      background: white;
      border-radius: 32px;
      padding: 44px 36px;
      box-shadow: var(--shadow);
      border: 1px solid var(--border);
      text-align: center;
      margin: 32px 0 16px;
    }
    .newsletter-box h3 {
      font-family: 'Syne', sans-serif;
      font-size: 1.8rem;
      margin-bottom: 6px;
    }
    .newsletter-box .sub {
      color: var(--gray);
      margin-bottom: 20px;
    }
    .newsletter-box form {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 12px;
    }
    .newsletter-box input {
      padding: 14px 22px;
      border-radius: 60px;
      border: 1px solid var(--border);
      min-width: 260px;
      font-size: 0.95rem;
      background: #fafbfc;
    }
    .newsletter-box input:focus {
      outline: none;
      border-color: var(--accent);
      box-shadow: 0 0 0 4px rgba(124,58,237,0.08);
    }

    /* footer */
    .footer {
      padding: 40px 0 24px;
      border-top: 1px solid var(--border);
      margin-top: 32px;
      color: var(--gray);
      font-size: 0.9rem;
    }
    .footer-inner {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      gap: 32px;
    }
    .footer-inner .col {
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-inner .col .title {
      font-weight: 600;
      color: var(--primary);
      margin-bottom: 4px;
    }
    .footer-bottom {
      text-align: center;
      padding-top: 24px;
      margin-top: 24px;
      border-top: 1px solid var(--border);
    }

    @media (max-width: 860px) {
      .nav-links, .search-wrap {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .hero-content h1 {
        font-size: 2.4rem;
      }
      .hero-visual img {
        width: 100%;
      }
      .deal-banner {
        flex-direction: column;
        align-items: stretch;
        text-align: center;
      }
      .deal-banner .timer {
        justify-content: center;
      }
    }
    @media (max-width: 560px) {
      .product-grid {
        grid-template-columns: 1fr 1fr;
      }
      .category-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }
  </style>
</head>
<body>
<div class="header">
  <div class="container header-inner">
    <div style="display:flex; align-items:center; gap:18px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <div class="brand">Nexus<span>Shop</span></div>
    </div>
    <div class="nav-links" id="navLinks">
      <a href="#">Home</a>
      <a href="#" id="catTrigger">Categories</a>
      <a href="#">Trending</a>
      <a href="#deals">Deals</a>
    </div>
    <div class="header-actions">
      <div class="search-wrap">
        <input type="text" id="searchInput" placeholder="Search ..." aria-label="search">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <button class="icon-btn"><i class="far fa-heart"></i></button>
      <div class="cart-badge">
        <button class="icon-btn"><i class="fas fa-shopping-bag"></i></button>
        <span class="count" id="cartCount">0</span>
      </div>
    </div>
  </div>
  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none; background:white; padding:16px 24px; border-top:1px solid var(--border);">
    <div style="display:flex; flex-direction:column; gap:14px; font-weight:500;">
      <a href="#">Home</a>
      <a href="#">Categories</a>
      <a href="#">Trending</a>
      <a href="#deals">Deals</a>
      <a href="#">About</a>
    </div>
  </div>
</div>

<main>
  <!-- hero -->
  <section class="hero">
    <div class="container">
      <div class="hero-content">
        <h1>Next-gen <br><i>essentials</i></h1>
        <p>Curated style, tech & everyday carry. Discover the latest drops with free shipping.</p>
        <div class="hero-actions">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-outline" id="exploreBtn"><i class="fas fa-tag"></i> Explore deals</button>
        </div>
      </div>
      <div class="hero-visual">
        <img src="https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=800&q=80" alt="hero showcase">
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section container">
    <div class="section-header">
      <h2>Categories</h2>
      <a href="#" class="link" id="viewAllCat">View all <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="category-grid" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" id="productsSection">
    <div class="section-header">
      <h2>Trending now</h2>
      <span class="link" id="clearSearch" style="cursor:pointer; font-weight:500;">✨ Show all</span>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </section>

  <!-- deal banner -->
  <section class="container" id="deals">
    <div class="deal-banner">
      <div class="info">
        <span class="badge" style="background: #f59e0b;">⚡ flash sale</span>
        <h3>MacBook Air M2</h3>
        <div class="desc">Ultraportable. Blazing fast. Now with a discount.</div>
        <div class="price-block">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="discount">-17%</span>
        </div>
      </div>
      <div class="timer" id="dealTimer">
        <div class="box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
        <div class="box"><div class="num" id="dealHours">00</div><div class="label">Hours</div></div>
        <div class="box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
        <div class="box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
      </div>
      <button class="btn btn-primary" id="buyDealBtn" style="background:#7c3aed; color:white; box-shadow:0 8px 20px rgba(124,58,237,0.3);"><i class="fas fa-bolt"></i> Grab deal</button>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>Customer love</h2>
    </div>
    <div class="testimonial-grid" id="testimonialsGrid"></div>
  </section>

  <!-- newsletter -->
  <section class="container">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <div class="sub">Get early access to drops and exclusive discounts.</div>
      <form id="newsletterForm">
        <input type="email" id="newsEmail" placeholder="Your email address" required>
        <button class="btn btn-primary" type="submit" style="padding:14px 38px;"><i class="fas fa-paper-plane"></i> Subscribe</button>
      </form>
      <div id="newsMsg" style="margin-top:14px; font-weight:500; display:none;"></div>
    </div>
  </section>
</main>

<footer class="footer">
  <div class="container">
    <div class="footer-inner">
      <div class="col">
        <div class="title" style="font-size:1.2rem; font-family:'Syne',sans-serif;">NexusShop</div>
        <div style="max-width:260px;">Modern e‑commerce demo with a clean aesthetic.</div>
        <div style="display:flex; gap:12px; margin-top:4px;">
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-github"></i></a>
        </div>
      </div>
      <div class="col"><span class="title">Company</span><a href="#">About</a><a href="#">Careers</a><a href="#">Press</a></div>
      <div class="col"><span class="title">Support</span><a href="#">Help</a><a href="#">Returns</a><a href="#">Contact</a></div>
    </div>
    <div class="footer-bottom">© <span id="year"></span> NexusShop · Demo</div>
  </div>
</footer>

<script>
  (function() {
    // --- DATA ---
    const categories = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-gem' },
    ];

    const products = [
      { id: 1, title: 'iPhone 14 Pro', price: 1099, oldPrice: 1199, rating: 5, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones', badge: 'New' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: 2199, rating: 4, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops', badge: '' },
      { id: 3, title: 'Apple Watch S8', price: 349, oldPrice: 399, rating: 5, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories', badge: '-13%' },
      { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: 0, rating: 4, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear', badge: '' },
      { id: 5, title: 'Sony A7 IV', price: 2499, oldPrice: 0, rating: 5, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets', badge: '' },
      { id: 6, title: 'Chanel No.5', price: 120, oldPrice: 150, rating: 5, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories', badge: '' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories', badge: '' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: 0, rating: 5, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets', badge: '' },
    ];

    const testimonials = [
      { name: 'Ava Martin', text: 'Fast shipping and excellent support. Exceeded my expectations!', rating: 5, initials: 'AM' },
      { name: 'Michael Lee', text: 'Great selection and smooth checkout. Will shop again.', rating: 4, initials: 'ML' },
      { name: 'Sophie Chen', text: 'Love the quality and the packaging. 10/10 experience.', rating: 5, initials: 'SC' },
    ];

    // --- render ---
    const catGrid = document.getElementById('categoriesGrid');
    const prodGrid = document.getElementById('productsGrid');
    const testiGrid = document.getElementById('testimonialsGrid');
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');

    let cartCount = 0;

    function renderCategories() {
      catGrid.innerHTML = categories.map(c => `
        <div class="category-card" data-cat="${c.id}">
          <div class="icon"><i class="fas ${c.icon}"></i></div>
          <h4>${c.name}</h4>
        </div>
      `).join('');
      catGrid.querySelectorAll('.category-card').forEach(el => {
        el.addEventListener('click', () => {
          const cat = el.dataset.cat;
          const name = categories.find(c => c.id === cat)?.name || '';
          searchInput.value = name;
          filterProducts(name);
        });
      });
    }

    function renderProducts(list) {
      prodGrid.innerHTML = list.map(p => `
        <div class="product-card">
          <div class="image"><img src="${p.img}" alt="${p.title}" loading="lazy"></div>
          <div class="body">
            <div class="title">${p.title}</div>
            <div class="category-tag">${p.category}</div>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              ${p.badge ? `<span class="badge" style="background:#7c3aed;">${p.badge}</span>` : ''}
            </div>
            <div class="rating">${'★'.repeat(Math.round(p.rating))}${'☆'.repeat(5-Math.round(p.rating))}</div>
          </div>
          <div class="actions">
            <button data-id="${p.id}" class="add-cart"><i class="fas fa-plus"></i> Add</button>
            <button class="wish"><i class="far fa-heart"></i></button>
          </div>
        </div>
      `).join('');

      prodGrid.querySelectorAll('.add-cart').forEach(btn => {
        btn.addEventListener('click', (e) => {
          const id = Number(btn.dataset.id);
          const product = products.find(p => p.id === id);
          if (product) {
            cartCount++;
            cartCountEl.textContent = cartCount;
            btn.innerHTML = '<i class="fas fa-check"></i> Added';
            btn.style.background = '#22c55e';
            setTimeout(() => {
              btn.innerHTML = '<i class="fas fa-plus"></i> Add';
              btn.style.background = '';
            }, 1000);
          }
        });
      });
    }

    function renderTestimonials() {
      testiGrid.innerHTML = testimonials.map(t => `
        <div class="testi-card">
          <div class="stars">${'★'.repeat(t.rating)}${'☆'.repeat(5-t.rating)}</div>
          <p>“${t.text}”</p>
          <div class="user">
            <div
