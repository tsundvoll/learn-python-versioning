# Learn Python Versioning

Python project to test out package versioning in releases

# Dependencies

The dependencies used for this package are listed in `pyproject.toml` and pinned in `requirements.txt`. This ensures the builds are predictable and deterministic. This project uses `pip-compile` (from [`pip-tools`](https://github.com/jazzband/pip-tools)) for this:

```
pip-compile --output-file=requirements.txt pyproject.toml
```

To update the requirements to the latest versions, run the same command with the `--upgrade` flag:

```
pip-compile --output-file=requirements.txt pyproject.toml --upgrade
```
