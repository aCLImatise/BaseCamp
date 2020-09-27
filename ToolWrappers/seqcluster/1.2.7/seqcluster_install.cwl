class: CommandLineTool
id: seqcluster_install.cwl
inputs:
- id: in_upgrade
  doc: ''
  type: boolean
  inputBinding:
    prefix: --upgrade
- id: in_data
  doc: ''
  type: string
  inputBinding:
    prefix: --data
- id: in_tools
  doc: ''
  type: string
  inputBinding:
    prefix: --tools
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqcluster_install
