class: CommandLineTool
id: bp_meta_gff.pl.cwl
inputs:
- id: in_of__database
  doc: of --database.
  type: string?
  inputBinding:
    prefix: -d
- id: in_database
  doc: Mysql database name (default dbi:mysql:test)
  type: string?
  inputBinding:
    prefix: --database
- id: in_adaptor
  doc: Mysql adaptor (default dbi::mysqlopt)
  type: string?
  inputBinding:
    prefix: --adaptor
- id: in_user
  doc: <user>      Username for mysql authentication
  type: boolean?
  inputBinding:
    prefix: --user
- id: in_pass
  doc: <password>  Password for mysql authentication
  type: boolean?
  inputBinding:
    prefix: --pass
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_meta_gff.pl
