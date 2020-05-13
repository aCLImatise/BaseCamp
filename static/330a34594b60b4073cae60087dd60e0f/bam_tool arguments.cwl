class: CommandLineTool
id: bam_tool arguments.cwl
inputs:
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tool_arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bam
- tool arguments
