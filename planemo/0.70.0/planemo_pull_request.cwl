class: CommandLineTool
id: ../../../planemo_pull_request.cwl
inputs:
- id: message
  doc: Message describing the pull request to create.
  type: string
  inputBinding:
    prefix: --message
- id: project
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- pull_request
