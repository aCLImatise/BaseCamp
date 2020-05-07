class: CommandLineTool
id: merfishtools_est_error_rates_TSV_FILE.cwl
inputs:
- id: raw_data
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- est-error-rates
- TSV-FILE
