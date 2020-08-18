class: CommandLineTool
id: ../../../arb_name_server.cwl
inputs:
- id: name_sets_name
  doc: <name>        sets species name to '<name>'
  type: boolean
  inputBinding:
    prefix: -s
- id: name_sets_extended
  doc: <name>        sets extended name to '<name>'
  type: boolean
  inputBinding:
    prefix: -e
- id: ali_sets_alignment
  doc: <ali>         sets alignment to '<ali>'
  type: boolean
  inputBinding:
    prefix: -a
- id: file_sets_file
  doc: <file>        sets default file to '<file>'
  type: boolean
  inputBinding:
    prefix: -d
- id: fielddef_sets_field
  doc: <field>=<def> sets DB field to '<field>' (using <def> as default)
  type: boolean
  inputBinding:
    prefix: -f
- id: readonly_mode
  doc: read-only mode
  type: boolean
  inputBinding:
    prefix: -r
- id: server_sets_dbserver
  doc: <server>      sets DB-server to '<server>'  [default = ':']
  type: boolean
  inputBinding:
    prefix: -D
- id: server_sets_jobserver
  doc: <server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']
  type: boolean
  inputBinding:
    prefix: -J
- id: server_sets_mgrserver
  doc: <server>      sets MGR-server to '<server>' [default = 'ARB_MGR_SERVER']
  type: boolean
  inputBinding:
    prefix: -M
- id: server_sets_ptserver
  doc: <server>      sets PT-server to '<server>'  [default = 'ARB_PT_SERVER']
  type: boolean
  inputBinding:
    prefix: -P
- id: port
  doc: <[host]:port>   sets TCP connection to '<[host]:port>'
  type: boolean
  inputBinding:
    prefix: -T
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
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_name_server
