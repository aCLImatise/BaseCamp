class: CommandLineTool
id: planemo_pull_request_OPTIONS_PROJECT.cwl
inputs:
- id: message
  doc: Message describing the pull request to create.
  type: string
  inputBinding:
    prefix: --message
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- pull_request
- OPTIONS
- PROJECT
