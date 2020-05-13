class: CommandLineTool
id: merge_coords.cwl
inputs:
- id: output
  doc: Output file (stdout)
  type: File
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_coords
