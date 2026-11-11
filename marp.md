---
marp: true
theme: default
size: 16:9
html: true
style: |
  section {
    background-color: #f2f2f7;
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif;
    padding: 24px;
    box-sizing: border-box;
  }

  .container {
    display: flex;
    gap: 16px;
    width: 100%;
    height: 100%;
  }

  .hero-box {
    flex: 0 0 32%;
    background: #000000;
    color: #ffffff;
    border-radius: 20px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 100%;
    box-sizing: border-box;
  }

  .grid-box {
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 12px;
    height: 100%;
  }

  .row {
    display: flex;
    gap: 12px;
    flex: 1;
    width: 100%;
  }

  .card {
    background: #ffffff;
    border-radius: 16px;
    padding: 8px;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    box-shadow: 0 2px 8px rgba(0,0,0,0.04);
    flex: 1;
    height: 100%;
    overflow: hidden; /* 画像のはみ出し防止 */
  }

  /* 🖼️ 画像調整用CSS */
  .card img {
    max-width: 100%;
    max-height: 100%;
    object-fit: contain; /* 枠内にきれいに収める */
  }

  .card.w2 { flex: 2; }
  .card.w3 { flex: 3; }

  .accent { color: #8b3dff; font-weight: 800; line-height: 1.1; }
  .label   { color: #1d1d1f; font-size: 0.95rem; font-weight: 600; }
  .sub     { color: #6e6e73; font-size: 0.75rem; font-weight: 500; }

  .val-xl { font-size: 2.2rem; }
  .val-lg { font-size: 1.6rem; }
  .val-md { font-size: 1.1rem; }
---

<div class="container">
  <div class="hero-box">
    <span class="sub" style="color: #a1a1a6; margin-bottom: 8px"
      >NEXT GENERATION</span
    >
    <div style="font-size: 2.8rem; font-weight: 800">M1</div>
    <div style="font-size: 1.6rem; font-weight: 700; color: #8b3dff">MAX</div>
  </div>

  <!-- 画像 ＋ テキスト -->
  <!-- <div class="hero-box"> -->
  <!--   <!-- 画像の高さ（max-height）をパーセントやpxで調整します -->
  <!--   <img src="./.png" style="max-height: 40%; margin-bottom: 12px;"> -->
  <!--   <span class="sub" style="color:#a1a1a6; margin-bottom:4px;">NEXT GENERATION</span> -->
  <!--   <div style="font-size:2.8rem; font-weight:800;">M1</div> -->
  <!--   <div style="font-size:1.6rem; font-weight:700; color:#8b3dff;">MAX</div> -->
  <!-- </div> -->

  <!-- 画像のみ（カードいっぱいに大きな製品写真を載せる） -->
  <!-- <div class="hero-box" style="padding: 0;"> -->
  <!--   <img src="./product-hero.png" style="width: 100%; height: 100%; object-fit: cover; border-radius: 20px;"> -->
  <!-- </div> -->

  <!-- 背景画像として設定する（画像の上に文字を重ねる） -->
  <!-- <div class="hero-box" style="background: url('./hero-bg.png') center/cover no-repeat;"> -->
  <!--   <span class="sub" style="color:#a1a1a6; margin-bottom:8px;">NEXT GENERATION</span> -->
  <!--   <div style="font-size:2.8rem; font-weight:800;">M1</div> -->
  <!--   <div style="font-size:1.6rem; font-weight:700; color:#8b3dff;">MAX</div> -->
  <!-- </div> -->

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
      <!-- パターン1：カードいっぱいに画像を敷き詰める -->
      <div class="card">
        <img src="https://via.placeholder.com/150" alt="Sample Image" />
      </div>
    </div>
    <div class="row">
      <!-- パターン2：画像 ＋ テキストの組み合わせ（画像サイズを直接指定して調整） -->
      <div class="card">
        <img
          src="https://via.placeholder.com/100x50"
          style="max-height: 50px; margin-bottom: 4px"
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
