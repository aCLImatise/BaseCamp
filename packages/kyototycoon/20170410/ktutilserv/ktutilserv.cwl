class: CommandLineTool
id: ktutilserv.cwl
inputs:
- id: in_th
  doc: ''
  type: long?
  inputBinding:
    prefix: -th
- id: in_tout
  doc: ''
  type: long?
  inputBinding:
    prefix: -tout
- id: in_port
  doc: ''
  type: long?
  inputBinding:
    prefix: -port
- id: in_host
  doc: ''
  type: string?
  inputBinding:
    prefix: -host
- id: in_echo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_http
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_mt_echo
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rpc
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kyototycoon:20170410--h896b458_0
cwlVersion: v1.1
baseCommand:
- ktutilserv
