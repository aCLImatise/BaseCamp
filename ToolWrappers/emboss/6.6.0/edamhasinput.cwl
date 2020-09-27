class: CommandLineTool
id: edamhasinput.cwl
inputs:
- id: in_namespace
  doc: "menu       [*] By default all terms are returned.\nSearches can be limited\
    \ to one or a few\nnamespaces. (Values: data (Data entity);\nentity (Biological\
    \ entity); format (Data\nformat); identifier (Identifier); operation\n(Bioinformatics\
    \ operation); resource (Data\nresource); topic (Field of bioinformatics\nstudy))"
  type: boolean
  inputBinding:
    prefix: -namespace
- id: in_sensitive
  doc: "boolean    [N] By default, the query keywords are\nmatched against the EDAM\
    \ term names (and\nsynonyms) only. This option also matches the\nkeywords against\
    \ the EDAM term definitions\nand will therefore (typically) report more\nmatches."
  type: boolean
  inputBinding:
    prefix: -sensitive
- id: in_subclasses
  doc: "boolean    [N] Extend the query matches to include all\nterms which are specialisations\
    \ (EDAM\nsub-classes) of the matched type."
  type: boolean
  inputBinding:
    prefix: -subclasses
- id: in_obsolete
  doc: "boolean    [N] The default behaviour is to not use or\nreturn obsolete terms.\
    \ This option if set\nwill include all terms."
  type: boolean
  inputBinding:
    prefix: -obsolete
- id: in_name
  doc: 'Additional (Optional) qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- edamhasinput
