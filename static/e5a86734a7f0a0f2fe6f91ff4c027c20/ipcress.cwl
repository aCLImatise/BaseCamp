class: CommandLineTool
id: ../../../ipcress.cwl
inputs:
- id: in_help
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help
- id: in_input
  doc: ''
  type: File
  inputBinding:
    prefix: --input
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    prefix: --sequence
- id: in_mismatch
  doc: ''
  type: string
  inputBinding:
    prefix: --mismatch
- id: in_memory
  doc: ''
  type: string
  inputBinding:
    prefix: --memory
- id: in_pretty
  doc: ''
  type: boolean
  inputBinding:
    prefix: --pretty
- id: in_seed
  doc: ''
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_products
  doc: ''
  type: boolean
  inputBinding:
    prefix: --products
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ipcress
