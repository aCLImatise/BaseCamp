class: CommandLineTool
id: stacks_dist_extract.cwl
inputs:
- id: dist_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- stacks-dist-extract
