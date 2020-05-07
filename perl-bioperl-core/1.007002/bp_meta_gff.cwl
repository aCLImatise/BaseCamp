class: CommandLineTool
id: bp_meta_gff.pl.cwl
inputs:
- id: d
  doc: of --database.
  type: string
  inputBinding:
    prefix: -d
- id: database
  doc: Mysql database name (default dbi:mysql:test)
  type: string
  inputBinding:
    prefix: --database
- id: adaptor
  doc: Mysql adaptor (default dbi::mysqlopt)
  type: string
  inputBinding:
    prefix: --adaptor
- id: user
  doc: <user>      Username for mysql authentication
  type: boolean
  inputBinding:
    prefix: --user
- id: pass
  doc: <password>  Password for mysql authentication
  type: boolean
  inputBinding:
    prefix: --pass
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_meta_gff.pl
