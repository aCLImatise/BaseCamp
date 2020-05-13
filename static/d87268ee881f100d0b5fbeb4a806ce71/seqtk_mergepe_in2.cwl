class: CommandLineTool
id: seqtk_mergepe_in2.fq.cwl
inputs:
- id: in1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mergepe
- in2.fq
