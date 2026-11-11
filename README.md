# marp-bento-grid

A single-slide [Marp](https://marp.app/) template for the bento-grid layout popularized by Apple product pages: one tall hero panel on the left, a stack of rounded cards on the right.

The whole design lives in [`marp.md`](./marp.md) — no build step, no dependencies beyond Marp CLI (or a Marp-compatible editor such as VS Code with the Marp extension).

## Preview

The layout consists of:

- a full-height **hero box** (32% width) for a product name, image, or background photo
- a **grid box** filling the rest, made of three rows
- flexible **cards** with three content patterns: text only, image + text, or image only

## Requirements

- [Marp CLI](https://github.com/marp-team/marp-cli) (`npm install -g @marp-team/marp-cli`), or
- Docker / Podman with the `marpteam/marp-cli` image, or
- the Marp extension for VS Code / Obsidian

## Usage

### Preview

```sh
marp --preview marp.md
```

Or open `marp.md` in an editor with Marp support and use its preview.

### Export

```sh
# PNG images (one per slide)
marp marp.md --images png

# PDF
marp marp.md --pdf

# HTML
marp marp.md --html
```

### Export with Podman

[`convert-to-png.sh`](./convert-to-png.sh) runs Marp CLI in a container and writes the rendered slide to the current directory:

```sh
./convert-to-png.sh
```

This produces `marp.001.png`. The script uses `podman`; replace it with `docker` if that is your container runtime.

> Note: `*.png` is listed in `.gitignore`, so generated previews are not committed.

## Customizing

### Hero panel

The hero is a `.hero-box` div. The default is text only; three alternative variants are included in `marp.md` as one commented block:

1. **Text only** (default) — `.hero-eyebrow`, `.hero-title`, `.hero-accent`
2. **Image + text** — add `.hero-image` above the text
3. **Image only** — add `.image-only`; the image fills the panel with `object-fit: cover`
4. **Background image** — add `.has-bg`, then change the URL in the `.hero-box.has-bg` rule

The hero text styles are classes rather than inline styles, so they survive Marp CLI's PNG export. Edit `.hero-title` / `.hero-accent` in the front matter to change the product name size.

### Cards

Each card is a `.card` div inside a `.row`. Rows share vertical space equally (`flex: 1`), and cards share horizontal space equally.

To make a card wider, add a width class:

```html
<div class="card w2">…</div> <!-- 2× width -->
<div class="card w3">…</div> <!-- 3× width -->
```

To change the grid proportions, edit the `flex` values in the `style` block at the top of `marp.md`:

```css
.hero-box { flex: 0 0 32%; } /* hero width */
.row      { flex: 1; }       /* row height */
```

### Typography and colors

Reusable classes are defined in the front matter:

| Class           | Purpose                                |
| --------------- | -------------------------------------- |
| `.accent`       | Purple highlight (`#8b3dff`)           |
| `.label`        | Primary card text (0.95em)             |
| `.sub`          | Secondary/muted text (0.75em)          |
| `.val-xl`       | Extra-large value (2.2em)              |
| `.val-lg`       | Large value (1.6em)                    |
| `.val-md`       | Medium value (1.1em)                   |
| `.hero-eyebrow` | Small label above the hero title       |
| `.hero-title`   | Hero product name (45px)               |
| `.hero-accent`  | Hero accent line (26px)                |

The `.val-*`, `.label`, and `.sub` sizes use `em`, so they scale with the slide's base font size instead of the browser's `rem` root. The hero sizes use `px` because the hero is a fixed-size panel.

All colors, radii, gaps, and the card shadow are CSS variables on `section`:

```css
--bento-bg: #f2f2f7;
--bento-accent: #8b3dff;
--bento-radius-lg: 20px;
--bento-gap: 12px;
```

Change `--bento-accent` once to re-theme the slide.

### Images

Card images are constrained to fit their card without overflowing:

```css
.card img {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}
```

For an image that should fill the whole card (edge to edge), add the `cover` class:

```html
<div class="card cover">
  <img src="./images/product.png" />
</div>
```

`.card.cover` removes the card padding and switches the image to `width: 100%; height: 100%; object-fit: cover`.

For a small icon above card text, use `.card-icon`:

```html
<img class="card-icon" src="./images/icon.png" />
<span class="label">Feature name</span>
```

The template uses `https://via.placeholder.com/...` URLs as placeholders. Replace them with local files (e.g. `./images/product.png`) or remote URLs.

> Marp CLI's PNG export does not reliably apply inline `style` attributes (tested with v4.5.1). Prefer the classes above when customizing.

## Files

```
.
├── marp.md            # the slide deck (layout + styles)
├── convert-to-png.sh  # render to PNG via Podman
├── LICENSE            # MIT
└── README.md
```

## License

[MIT](./LICENSE) © RepublicOfKorokke
