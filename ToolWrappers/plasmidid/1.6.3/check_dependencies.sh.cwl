class: CommandLineTool
id: check_dependencies.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- check_dependencies.sh
