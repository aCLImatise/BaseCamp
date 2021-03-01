class: CommandLineTool
id: mb_mockinbird2table.cwl
inputs:
- id: in_post_thresh
  doc: ''
  type: string?
  inputBinding:
    prefix: --post_thresh
- id: in_posterior_file
  doc: output_file
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
- mb-mockinbird2table
