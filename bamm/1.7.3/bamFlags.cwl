class: CommandLineTool
id: bamFlags.cwl
inputs:
- id: flags
  doc: BAM flags to interpret
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bamFlags
