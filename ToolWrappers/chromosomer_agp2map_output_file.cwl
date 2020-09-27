class: CommandLineTool
id: chromosomer_agp2map_output_file.cwl
inputs:
- id: in_chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_agp_two_map
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_agp_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chromosomer
- agp2map
- output_file
