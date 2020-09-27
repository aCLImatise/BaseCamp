class: CommandLineTool
id: kmc_dump.cwl
inputs:
- id: in_ci
  doc: <value> - exclude k-mers occurring less than <value> times
  type: boolean
  inputBinding:
    prefix: -ci
- id: in_cx
  doc: <value> - exclude k-mers occurring more of than <value> times
  type: boolean
  inputBinding:
    prefix: -cx
- id: in_kmc_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kmc_dump
