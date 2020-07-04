class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_agp2map_output_file.cwl
inputs:
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: agp_two_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: agp_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- agp2map
- output_file
