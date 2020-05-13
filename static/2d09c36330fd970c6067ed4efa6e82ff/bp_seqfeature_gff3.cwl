class: CommandLineTool
id: bp_seqfeature_gff3.pl.cwl
inputs:
- id: dsn
  doc: The database name ()
  type: boolean
  inputBinding:
    prefix: --dsn
- id: adaptor
  doc: The storage adaptor to use ()
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: user
  doc: User to connect to database as
  type: boolean
  inputBinding:
    prefix: --user
- id: password
  doc: Password to use to connect to database
  type: boolean
  inputBinding:
    prefix: --password
- id: gff3opt
  doc: 'flag options to gff3_string (i.e.: pass -gffopt 1 to recurse)'
  type: boolean
  inputBinding:
    prefix: --gff3opt
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqfeature_gff3.pl
