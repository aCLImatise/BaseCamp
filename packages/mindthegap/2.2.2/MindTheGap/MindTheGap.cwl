class: CommandLineTool
id: ../../../MindTheGap.cwl
inputs:
- id: in_version
  doc: ':    display current version'
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MindTheGap
