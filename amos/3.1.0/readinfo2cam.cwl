class: CommandLineTool
id: readinfo2cam.cwl
inputs:
- id: contig_info_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: repeat_coord_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- readinfo2cam
