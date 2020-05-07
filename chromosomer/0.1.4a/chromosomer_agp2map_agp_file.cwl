class: CommandLineTool
id: chromosomer_agp2map_agp_file.cwl
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
- agp_file
