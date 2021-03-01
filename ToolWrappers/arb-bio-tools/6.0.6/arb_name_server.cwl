class: CommandLineTool
id: arb_name_server.cwl
inputs:
- id: in_name_sets_species_name
  doc: <name>        sets species name to '<name>'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_name_sets_extended_name
  doc: <name>        sets extended name to '<name>'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_ali_sets_alignment
  doc: <ali>         sets alignment to '<ali>'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_file_sets_file
  doc: <file>        sets default file to '<file>'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_fielddef_sets_db
  doc: <field>=<def> sets DB field to '<field>' (using <def> as default)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_readonly_mode
  doc: read-only mode
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_server_sets_dbserver
  doc: <server>      sets DB-server to '<server>'  [default = ':']
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_server_sets_jobserver
  doc: <server>      sets job-server to '<server>' [default = 'ARB_JOB_SERVER']
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_server_sets_mgrserver
  doc: <server>      sets MGR-server to '<server>' [default = 'ARB_MGR_SERVER']
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_server_sets_ptserver
  doc: <server>      sets PT-server to '<server>'  [default = 'ARB_PT_SERVER']
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_port
  doc: <[host]:port>   sets TCP connection to '<[host]:port>'
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_server_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_name_server
