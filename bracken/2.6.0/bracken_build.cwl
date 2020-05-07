class: CommandLineTool
id: bracken_build.cwl
inputs:
- id: database
  doc: '= '
  type: string
  inputBinding:
    position: 0
- id: threads
  doc: = 1
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bracken-build
