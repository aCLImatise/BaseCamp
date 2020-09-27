class: CommandLineTool
id: mb_cap_occupancy_outputfile.cwl
inputs:
- id: in_quantile
  doc: ''
  type: string
  inputBinding:
    prefix: --quantile
- id: in_mb_cap_occupancy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-cap-occupancy
- outputfile
