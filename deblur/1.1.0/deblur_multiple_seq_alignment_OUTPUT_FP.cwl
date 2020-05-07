class: CommandLineTool
id: deblur_multiple_seq_alignment_OUTPUT_FP.cwl
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
- multiple-seq-alignment
- OUTPUT_FP
