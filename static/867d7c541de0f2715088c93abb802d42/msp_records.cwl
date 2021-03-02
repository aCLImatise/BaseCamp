class: CommandLineTool
id: msp_records.cwl
inputs:
- id: in_header
  doc: Print a header line in the output.
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_precision
  doc: "The number of decimal places to print in records\n"
  type: double?
  inputBinding:
    prefix: --precision
- id: in_history_file
  doc: The msprime history file in HDF5 format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- msp
- records
