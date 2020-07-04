class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merge_coords.cwl
inputs:
- id: output
  doc: Output file (stdout)
  type: File
  inputBinding:
    prefix: --output
- id: merge_coords_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: coords
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_coords
