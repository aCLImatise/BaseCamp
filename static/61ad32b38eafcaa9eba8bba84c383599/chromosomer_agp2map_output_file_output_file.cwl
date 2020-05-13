class: CommandLineTool
id: chromosomer_agp2map_output_file_output_file.cwl
inputs:
- id: agp_file
  doc: an AGP file
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: the output fragment map file
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- agp2map
- output_file
- output_file
