class: CommandLineTool
id: cert_sync.cwl
inputs:
- id: in_user
  doc: ''
  type: boolean
  inputBinding:
    prefix: --user
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_system_ca_bundle_dot_crt
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
- cert-sync
