# Minimal markdown-pdf with styles

> Currently based on debian, with node 7 due to some compatibilities issues with phantomjs and node 8


#### Thanks to :
- https://hub.docker.com/r/mkenney/npm/
- https://github.com/BlueHatbRit/mdpdf

> **Docker Hub** : https://hub.docker.com/r/dprslt/mdpdf/

## Usage

```bash
docker run --rm -v $(pwd):/data dprslt/mdpdf mdpdf README.md
```

See `mdpdf` [Github](https://github.com/BlueHatbRit/mdpdf) for more documentation.
