class: CommandLineTool
id: msp_macs.cwl
inputs:
- id: in_history_file
  doc: The msprime history file in HDF5 format
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- msp
- macs
