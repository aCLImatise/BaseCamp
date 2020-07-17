class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ema.cwl
inputs:
- id: specify_barcode_whitelist
  doc: ': specify barcode whitelist [required]'
  type: string
  inputBinding:
    prefix: -w
- id: specify_output_prefix
  doc: ': specify output prefix [required]'
  type: string
  inputBinding:
    prefix: -o
- id: count_vertical_line_preproc_vertical_line_align_vertical_line_help
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ema
