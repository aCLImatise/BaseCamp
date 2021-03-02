class: CommandLineTool
id: merfishtools_est_error_rates_cell.cwl
inputs:
- id: in_mer_fish_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_est_error_rates
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tsv_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- est-error-rates
- cell
