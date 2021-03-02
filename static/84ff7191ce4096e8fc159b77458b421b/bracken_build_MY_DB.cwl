class: CommandLineTool
id: bracken_build_MY_DB.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bracken-build
- MY_DB
