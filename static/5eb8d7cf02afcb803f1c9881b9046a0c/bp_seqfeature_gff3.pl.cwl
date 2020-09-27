class: CommandLineTool
id: bp_seqfeature_gff3.pl.cwl
inputs:
- id: in_dsn
  doc: The database name ()
  type: boolean
  inputBinding:
    prefix: --dsn
- id: in_adaptor
  doc: The storage adaptor to use ()
  type: boolean
  inputBinding:
    prefix: --adaptor
- id: in_user
  doc: User to connect to database as
  type: boolean
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password to use to connect to database
  type: boolean
  inputBinding:
    prefix: --password
- id: in_gff_three_opt
  doc: 'flag options to gff3_string (i.e.: pass -gffopt 1 to recurse)'
  type: boolean
  inputBinding:
    prefix: --gff3opt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bp_seqfeature_gff3.pl
