class: CommandLineTool
id: fixTri.sh.cwl
inputs:
- id: tri_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fixTri.sh
