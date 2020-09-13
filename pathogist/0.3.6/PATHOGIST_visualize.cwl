class: CommandLineTool
id: ../../../PATHOGIST_visualize.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- visualize
