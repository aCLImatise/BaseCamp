class: CommandLineTool
id: _pasteseq.cwl
inputs:
- id: in_pos
  doc: "integer    [$(asequence.end)] The position in the main\ninput sequence to\
    \ insert after.\nTo insert before the start use the position\n0. (Integer 0 or\
    \ more)"
  type: boolean?
  inputBinding:
    prefix: -pos
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _pasteseq
