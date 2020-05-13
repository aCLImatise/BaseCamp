class: CommandLineTool
id: deblur_trim_SEQS_FP.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_fp
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- trim
- SEQS_FP
