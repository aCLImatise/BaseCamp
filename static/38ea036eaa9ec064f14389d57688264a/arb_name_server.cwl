class: CommandLineTool
id: arb_name_server.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: server_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: s
  doc: <name>        sets species name to '<name>'
  type: boolean
  inputBinding:
    prefix: -s
- id: e
  doc: <name>        sets extended name to '<name>'
  type: boolean
  inputBinding:
    prefix: -e
- id: a
  doc: <ali>         sets alignment to '<ali>'
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: <file>        sets default file to '<file>'
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: <field>=<def> sets DB field to '<field>' (using <def> as default)
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: read-only mode
  type: boolean
  inputBinding:
    prefix: -r
- id: d
  doc: <server>      sets DB-server to '<server>'  [default = ':']
  type: boolean
  inputBinding:
    prefix: -D
- id: j
  doc: <server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']
  type: boolean
  inputBinding:
    prefix: -J
- id: m
  doc: <server>      sets MGR-server to '<server>' [default = 'ARB_MGR_SERVER']
  type: boolean
  inputBinding:
    prefix: -M
- id: p
  doc: <server>      sets PT-server to '<server>'  [default = 'ARB_PT_SERVER']
  type: boolean
  inputBinding:
    prefix: -P
- id: t
  doc: <[host]:port>   sets TCP connection to '<[host]:port>'
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_name_server
