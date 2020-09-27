class: CommandLineTool
id: ontotext.cwl
inputs:
- id: in_subclasses
  doc: "boolean    [N] Extend the query matches to include all\nterms which are specialisations\n\
    (sub-classes) of the matched terms."
  type: boolean
  inputBinding:
    prefix: -subclasses
- id: in_obsolete
  doc: "boolean    [N] The default behaviour is to not use or\nreturn obsolete terms.\
    \ This option if set\nwill include all terms."
  type: boolean
  inputBinding:
    prefix: -obsolete
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ontotext
