class: CommandLineTool
id: webcheck.sh.cwl
inputs:
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- webcheck.sh
