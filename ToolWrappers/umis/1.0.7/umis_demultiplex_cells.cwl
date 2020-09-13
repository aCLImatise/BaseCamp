class: CommandLineTool
id: ../../../umis_demultiplex_cells.cwl
inputs:
- id: in_out_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --out_dir
- id: in_read_number
  doc: ''
  type: string
  inputBinding:
    prefix: --readnumber
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --prefix
- id: in_cb_histogram
  doc: ''
  type: string
  inputBinding:
    prefix: --cb_histogram
- id: in_cb_cut_off
  doc: ''
  type: long
  inputBinding:
    prefix: --cb_cutoff
- id: in_fast_q
  doc: ''
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
- demultiplex_cells
