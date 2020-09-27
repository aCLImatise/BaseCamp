class: CommandLineTool
id: chromosomer_simulator_output_dir.cwl
inputs:
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_g
  doc: ''
  type: long
  inputBinding:
    prefix: -g
- id: in_chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_simulator
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
- chromosomer
- simulator
- output_dir
