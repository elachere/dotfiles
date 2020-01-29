atom.workspace.observeTextEditors (editor) ->
  python = atom.grammars.grammarForScopeName "source.python"
  if editor.isEmpty() and editor.getGrammar() == python
    editor.insertText "# -*- coding: utf-8 -*-"
