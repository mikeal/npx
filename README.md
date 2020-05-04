# GitHub Action for npx

This extension is not required any more as GitHub allows for using `npx` out of the box:

```yaml
name: Tests
on: [push,pull]
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v1
        with:
            node-version: '10.x'
      - run: npx webpack
```

See <https://github.com/actions/setup-node> for details
