class: CommandLineTool
id: planemo_pull_request.cwl
inputs:
- id: in_message
  doc: Message describing the pull request to create.
  type: string
  inputBinding:
    prefix: --message
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- pull_request
