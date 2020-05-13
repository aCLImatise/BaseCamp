class: CommandLineTool
id: arb_db_server.cwl
inputs:
- id: a
  doc: use ASCII-DB-version
  type: boolean
  inputBinding:
    prefix: -A
- id: ccmd
  doc: "execute command 'cmd' on running server known command are: ping      test\
    \ if server is up (crash or failure if not) save      save the database (use -d\
    \ to change name) shutdown  shutdown running arb_db_server"
  type: boolean
  inputBinding:
    prefix: -Ccmd
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
- arb_db_server
