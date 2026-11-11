---
marp: true
theme: default
size: 16:9
html: true
style: |
  section {
    /* Theme tokens */
    --bento-bg: #f2f2f7;
    --bento-surface: #ffffff;
    --bento-ink: #1d1d1f;
    --bento-muted: #6e6e73;
    --bento-muted-on-dark: #a1a1a6;
    --bento-accent: #8b3dff;
    --bento-hero-bg: #000000;
    --bento-hero-ink: #ffffff;
    --bento-radius-lg: 20px;
    --bento-radius-md: 16px;
    --bento-gap: 12px;
    --bento-gap-lg: 16px;
    --bento-shadow: 0 2px 8px rgba(0, 0, 0, 0.04);

    background-color: var(--bento-bg);
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
    padding: 24px;
    box-sizing: border-box;
  }

  .container,
  .container * {
    box-sizing: border-box;
  }

  .container {
    position: relative;
    display: flex;
    gap: var(--bento-gap-lg);
    width: 100%;
    height: 100%;
  }

  .hero-box {
    flex: 0 0 32%;
    min-width: 0;
    background: var(--bento-hero-bg);
    color: var(--bento-hero-ink);
    border-radius: var(--bento-radius-lg);
    overflow: hidden;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
  }

  /* Hero: image + text */
  .hero-image {
    max-height: 40%;
    margin-bottom: 12px;
  }

  /* Hero: image only */
  .hero-box.image-only {
    padding: 0;
  }

  .hero-box.image-only img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  /* Hero: background image (change the URL here) */
  .hero-box.has-bg {
    background: var(--bento-hero-bg) url("./images/hero-bg.png") center/cover
      no-repeat;
  }

  .hero-eyebrow {
    color: var(--bento-muted-on-dark);
    margin-bottom: 8px;
  }

  .hero-title {
    font-size: 45px;
    font-weight: 800;
  }

  .hero-accent {
    font-size: 26px;
    font-weight: 700;
    color: var(--bento-accent);
  }

  .grid-box {
    flex: 1;
    min-width: 0;
    display: flex;
    flex-direction: column;
    gap: var(--bento-gap);
  }

  .row {
    display: flex;
    gap: var(--bento-gap);
    flex: 1;
  }

  .card {
    flex: 1;
    min-width: 0;
    background: var(--bento-surface);
    border-radius: var(--bento-radius-md);
    padding: 8px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    box-shadow: var(--bento-shadow);
    overflow: hidden;
  }

  /* Fit an image inside a card */
  .card img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain;
  }

  /* Small icon above card text */
  .card-icon {
    max-height: 50px;
    margin-bottom: 4px;
  }

  /* Fill an entire card with an image */
  .card.cover {
    padding: 0;
  }

  .card.cover img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }

  .card.w2 { flex: 2; }
  .card.w3 { flex: 3; }

  .accent { color: var(--bento-accent); font-weight: 800; line-height: 1.1; }
  .label  { color: var(--bento-ink); font-size: 0.95em; font-weight: 600; }
  .sub    { color: var(--bento-muted); font-size: 0.75em; font-weight: 500; }

  .val-xl { font-size: 2.2em; }
  .val-lg { font-size: 1.6em; }
  .val-md { font-size: 1.1em; }
---

<div class="container">
  <!-- Default hero: text only -->
  <div class="hero-box">
    <span class="sub hero-eyebrow">NEXT GENERATION</span>
    <div class="hero-title">M1</div>
    <div class="hero-accent">MAX</div>
  </div>

  <!--
    Hero variants: replace the .hero-box above with one of these.

    A. Image + text
    <div class="hero-box">
      <img class="hero-image" src="./images/hero.png" />
      <span class="sub hero-eyebrow">NEXT GENERATION</span>
      <div class="hero-title">M1</div>
      <div class="hero-accent">MAX</div>
    </div>

    B. Image only
    <div class="hero-box image-only">
      <img src="./images/hero.png" />
    </div>

    C. Background image
    <div class="hero-box has-bg">
      <span class="sub hero-eyebrow">NEXT GENERATION</span>
      <div class="hero-title">M1</div>
      <div class="hero-accent">MAX</div>
    </div>
  -->

  <div class="grid-box">
    <div class="row">
      <div class="card">
        <span class="sub">Up to</span><span class="accent val-lg">20%</span>
        <span class="sub">faster CPU</span>
      </div>
      <div class="card">
        <span class="sub">Up to</span><span class="accent val-lg">30%</span>
        <span class="sub">faster GPU</span>
      </div>
      <!-- Image fills the entire card -->
      <div class="card cover">
        <img src="https://via.placeholder.com/150" alt="Sample Image" />
      </div>
    </div>
    <div class="row">
      <!-- Image + text -->
      <div class="card">
        <img
          class="card-icon"
          src="https://via.placeholder.com/100x50"
        />
        <span class="label">High-performance ProRes Engine</span>
      </div>
      <div class="card"><span class="label">⚡ Thunderbolt 4</span></div>
    </div>
    <div class="row">
      <div class="card"><span class="label">nanka sugoi koto</span></div>
    </div>
  </div>
</div>
