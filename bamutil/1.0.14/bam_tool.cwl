class: CommandLineTool
id: bam_tool.cwl
inputs:
- id: tool_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam
- tool
