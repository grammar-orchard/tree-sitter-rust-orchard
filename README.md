# tree-sitter-rust-orchard

[![crates][crates]](https://crates.io/crates/tree-sitter-rust-orchard)
[![pypi][pypi]](https://pypi.org/project/tree-sitter-rust-orchard)
[![npm][npm]](https://www.npmjs.com/package/tree-sitter-rust-orchard)

This is a tree-sitter grammar for Rust.

### This is a mirror

The source repository for this grammar is [codeberg.org/grammar-orchard/tree-sitter-rust-orchard](https://codeberg.org/grammar-orchard/tree-sitter-rust-orchard).
This repository is only a mirror, which additionally contains the generated files (such as `parser.c`, `parser.json` and bindings).

It is provided for legacy tools which can only consume grammars as Git repositories with generated files checked in.
The tree-sitter project has [signalled its intention to move away from this practice](https://github.com/tree-sitter/tree-sitter/issues/930)
by "mak[ing] it easier to collaborate on grammars by removing generated files from version control"
and to "remove generated files from all the grammar repos in the tree-sitter org", so we encourage those legacy
tools to prepare for this by making it possible to consume grammars in other ways, for instance by consuming an archive
fetched from release artifacts.

In the interest of keeping disk space usage low, this mirror only contains one commit for each release.

### Using it

Beyond cloning this repository, you can also obtain the parser in various formats:
* as an archive from [the Releases page of the source repository](https://codeberg.org/grammar-orchard/tree-sitter-rust-orchard/releases), which also contains all the generated files (bindings, parser code)
* as a Rust crate: `cargo add tree-sitter-rust-orchard`
* as a Python package: `pip install tree-sitter-rust-orchard`
* as an NPM package: `npm install tree-sitter-rust-orchard`

### Contributing

Contributions are welcome, so are co-maintainers.

Issues and pull requests can be filed on [the source repository](https://codeberg.org/grammar-orchard/tree-sitter-rust-orchard).
We try to be proactive in reviewing pull requests and onboarding people in the project.

[crates]: https://img.shields.io/crates/v/tree-sitter-rust-orchard?logo=rust
[pypi]: https://img.shields.io/pypi/v/tree-sitter-rust-orchard?logo=pypi&logoColor=ffd242
[npm]: https://img.shields.io/npm/v/tree-sitter-rust-orchard?logo=npm
