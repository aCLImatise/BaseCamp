class: CommandLineTool
id: sizeseq.cwl
inputs:
- id: in_descending
  doc: "boolean    [N] By default the shortest sequence is\ngiven first."
  type: boolean?
  inputBinding:
    prefix: -descending
- id: in_feature
  doc: "boolean    Sequence feature information will be\nretained if this option is\
    \ set."
  type: boolean?
  inputBinding:
    prefix: -feature
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sizeseq
