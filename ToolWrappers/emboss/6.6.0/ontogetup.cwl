class: CommandLineTool
id: ontogetup.cwl
inputs:
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
- ontogetup
