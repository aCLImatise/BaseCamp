class: CommandLineTool
id: deblur_dereplicate_OUTPUT_FP.cwl
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
- dereplicate
- OUTPUT_FP
