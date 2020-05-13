class: CommandLineTool
id: merfishtools_est_error_rates_RAW_DATA.cwl
inputs:
- id: tsv_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: raw_data
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- est-error-rates
- RAW-DATA
