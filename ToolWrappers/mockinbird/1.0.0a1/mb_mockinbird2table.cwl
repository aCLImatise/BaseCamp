class: CommandLineTool
id: mb_mockinbird2table.cwl
inputs:
- id: in_post_thresh
  doc: ''
  type: string
  inputBinding:
    prefix: --post_thresh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-mockinbird2table
