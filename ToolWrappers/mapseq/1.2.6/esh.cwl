class: CommandLineTool
id: esh.cwl
inputs:
- id: in_web_server
  doc: 'start webserver   [type: bool default: false]'
  type: boolean?
  inputBinding:
    prefix: --webserver
- id: in_dc_node
  doc: 'start computing node   [type: bool default: false]'
  type: boolean?
  inputBinding:
    prefix: --dcnode
- id: in_dc_server
  doc: 'start TCP distributed computing server   [type: bool default: false]'
  type: boolean?
  inputBinding:
    prefix: --dcserver
- id: in_dc_host
  doc: 'connect via TCP to distributed computing host   [type: estr default: ]'
  type: boolean?
  inputBinding:
    prefix: --dchost
- id: in_dc_group
  doc: 'distributed computing group to join   [type: estr default: ]'
  type: boolean?
  inputBinding:
    prefix: --dcgroup
- id: in_i
  doc: '[type: estr default: ]'
  type: boolean?
  inputBinding:
    prefix: --i
- id: in_s_file
  doc: 'named socket file to connect with daemon   [type: estr default: ]'
  type: boolean?
  inputBinding:
    prefix: --sfile
- id: in_saddr
  doc: 'socket address to listen/connect with daemon   [type: estr default: ]'
  type: boolean?
  inputBinding:
    prefix: --saddr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0
cwlVersion: v1.1
baseCommand:
- esh
