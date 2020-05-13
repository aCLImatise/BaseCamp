class: CommandLineTool
id: ema.cwl
inputs:
- id: w
  doc: ': specify barcode whitelist [required]'
  type: string
  inputBinding:
    prefix: -w
- id: o
  doc: ': specify output prefix [required]'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- ema
