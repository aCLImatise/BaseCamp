class: CommandLineTool
id: ../../../umis_demultiplex_samples.cwl
inputs:
- id: in_out_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --out_dir
- id: in_nedit
  doc: ''
  type: long
  inputBinding:
    prefix: --nedit
- id: in_barcodes
  doc: ''
  type: File
  inputBinding:
    prefix: --barcodes
- id: in_sample_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- demultiplex_samples
