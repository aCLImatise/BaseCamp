class: CommandLineTool
id: stacks_dist_extract.cwl
inputs:
- id: in_dist_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stacks-dist-extract
