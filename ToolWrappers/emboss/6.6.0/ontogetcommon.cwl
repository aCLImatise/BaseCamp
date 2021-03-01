class: CommandLineTool
id: ontogetcommon.cwl
inputs:
- id: in_obsolete
  doc: "boolean    [N] The default behaviour is to not use or\nreturn obsolete terms.\
    \ This option if set\nwill include all terms."
  type: boolean?
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
hints: []
cwlVersion: v1.1
baseCommand:
- ontogetcommon
