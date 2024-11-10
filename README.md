# texassert

Assertion library for unit testing in plain TeX.

The documentation of this library can be found in [texassert.pdf](texassert.pdf), which
can be generated via `l3build doc`.

## Building, Installation, etc&period;

Assuming you have [TeXLive](https://www.tug.org/texlive/) installed,
you can enter the following commands under the project root folder:

```bash
# Run the regresion tests:
l3build check

# Generate the documentation:
l3build doc
# File texassert.pdf should be generated under the current folder

# Locally install to your home texmf tree:
l3build install
# find $(kpsewhich -var-value=TEXMFHOME) # your home texmf
# l3build uninstall # to uninstall

# Generate a bundle for uploading to CTAN:
l3build ctan

# For more information on other build targets:
l3build
```
