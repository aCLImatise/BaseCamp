class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hailctl_auth_login.cwl
inputs:
- id: namespace
  doc: 'Specify namespace for auth server. (default: from deploy configuration)'
  type: string
  inputBinding:
    prefix: --namespace
outputs: []
cwlVersion: v1.1
baseCommand:
- hailctl
- auth
- login
