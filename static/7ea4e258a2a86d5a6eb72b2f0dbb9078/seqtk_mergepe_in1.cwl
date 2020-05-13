class: CommandLineTool
id: seqtk_mergepe_in1.fq.cwl
inputs:
- id: in2fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mergepe
- in1.fq
