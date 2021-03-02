class: CommandLineTool
id: goname.cwl
inputs:
- id: in_namespace
  doc: "menu       [*] By default all terms are returned.\nSearches can be limited\
    \ to one or a few\nnamespaces. (Values: biological_process\n(Biological process);\
    \ cellular_component\n(Cellular component); molecular_function\n(Molecular function))"
  type: boolean?
  inputBinding:
    prefix: -namespace
- id: in_subclasses
  doc: "boolean    [N] Extend the query matches to include all\nterms which are specialisations\
    \ (GO\nsub-classes) of the matched type."
  type: boolean?
  inputBinding:
    prefix: -subclasses
- id: in_obsolete
  doc: "boolean    [N] The default behaviour is to not use or\nreturn obsolete terms.\
    \ This option if set\nwill include all terms."
  type: boolean?
  inputBinding:
    prefix: -obsolete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- goname
