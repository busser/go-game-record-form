# Go game record form

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This is a simple form for recording go games.

## Download the form

This repository includes a PDF of the form. You can download it here:
https://github.com/busser/go-game-record-form/raw/main/go-game-record-form.pdf.

## Generating a PDF from the source HTML

You can generate a PDF by printing the HTML to a PDF. Here's how I do it:

```
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --headless \
  --run-all-compositor-stages-before-draw \
  --print-to-pdf=go-game-record-form.pdf \
  --no-pdf-header-footer \
  ./go-game-record-form.html
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
