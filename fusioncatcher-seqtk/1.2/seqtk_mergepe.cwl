class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_mergepe.cwl
inputs:
- id: in_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- mergepe
