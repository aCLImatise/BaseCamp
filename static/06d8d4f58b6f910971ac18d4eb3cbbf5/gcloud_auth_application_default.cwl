class: CommandLineTool
id: gcloud_auth_application_default.cwl
inputs:
- id: in_credentials
  doc: SYNOPSIS
  type: string
  inputBinding:
    position: 0
- id: in_application_dot
  doc: 'More information on ADC and how they work can be found here:'
  type: string
  inputBinding:
    position: 0
- id: in_login
  doc: Acquire new user credentials to use for Application Default
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- auth
- application-default
