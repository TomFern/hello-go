
## Steps to release

### Create a tag

```shell
git tag v1.0.0
git push origin v1.0.0
```

### CI/CD

Let CI/CD build, create artifacts

### Publish to GH

```shell
gh auth login
gh release create v1.0.0 \
  http-hello-world-1.0.0-linux.tar.gz \
  http-hello-world-1.0.0-darwin.tar.gz \
  http-hello-world-1.0.0-windows.zip \
  --title "v1.0.0" \
  --notes "Release notes describing what’s new in this release."
```