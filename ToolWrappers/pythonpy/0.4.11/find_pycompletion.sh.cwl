class: CommandLineTool
id: find_pycompletion.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find_pycompletion.sh
