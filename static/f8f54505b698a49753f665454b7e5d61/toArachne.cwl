class: CommandLineTool
id: ../../../toArachne.cwl
inputs:
- id: successful_completion
  doc: Successful completion
  type: string
  inputBinding:
    position: 0
- id: failed_completion
  doc: Failed completion
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- toArachne
