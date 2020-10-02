class: CommandLineTool
id: radical_utils_pylint.sh.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- radical-utils-pylint.sh
