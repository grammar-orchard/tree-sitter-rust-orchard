package tree_sitter_rust_orchard_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_rust_orchard "codeberg.org/grammar-orchard/tree-sitter-rust-orchard/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_rust_orchard.Language())
	if language == nil {
		t.Errorf("Error loading Rust grammar")
	}
}
