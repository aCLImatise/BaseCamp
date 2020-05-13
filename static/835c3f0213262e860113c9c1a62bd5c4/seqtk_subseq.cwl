class: CommandLineTool
id: seqtk_subseq.cwl
inputs:
- id: t
  doc: TAB delimited output
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: sequence line length [0]
  type: long
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- subseq
