class: CommandLineTool
id: deblur_remove_chimeras_denovo_OPTIONS_OUTPUT_FP.cwl
inputs:
- id: seqs_fp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- remove-chimeras-denovo
- OPTIONS
- OUTPUT_FP
