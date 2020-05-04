# GitHub Action for npx

This Action for [npx](https://github.com/zkat/npx#readme) enables arbitrary actions with the `npx` 
command-line client, which will pull down, install and run arbitrary command line interfaces from npm.

## Usage

An example workflow to build, test, and publish an npm package to the default public registry follows:

```yaml
name: Tests
on: [push]
jobs:
  build_latex:
    runs-on: ubuntu-latest
    steps:
      - name: Set up Git repository
        uses: actions/checkout@v2
      - name: Run generator
        uses: mikeal/npx@master
        with:
          args: webpack
```

### Secrets

* `NPM_AUTH_TOKEN` - **Optional**. The token to use for authentication with the npm registry. Required for `npm publish` ([more info](https://docs.npmjs.com/getting-started/working_with_tokens))

### Environment variables

* `NPM_REGISTRY_URL` - **Optional**. To specify a registry to authenticate with. Defaults to `registry.npmjs.org`
* `NPM_STRICT_SSL` - **Optional**. Specify false if your registry is insecure and uses the `http` protocol. Defaults to `true`
* `NPM_CONFIG_USERCONFIG` - **Optional**. To specify a non-default per-user configuration file. Defaults to `$HOME/.npmrc` ([more info](https://docs.npmjs.com/misc/config#npmrc-files))

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

Container images built with this project include third party materials. See [THIRD_PARTY_NOTICE.md](THIRD_PARTY_NOTICE.md) for details.
