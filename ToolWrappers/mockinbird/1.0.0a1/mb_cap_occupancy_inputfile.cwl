class: CommandLineTool
id: mb_cap_occupancy_inputfile.cwl
inputs:
- id: in_quantile
  doc: ''
  type: string
  inputBinding:
    prefix: --quantile
- id: in_output_file
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
- mb-cap-occupancy
- inputfile
