class: CommandLineTool
id: glim_diff.awk.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- glim-diff.awk
