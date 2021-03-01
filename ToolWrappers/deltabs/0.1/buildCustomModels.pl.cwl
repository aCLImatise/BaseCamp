class: CommandLineTool
id: buildCustomModels.pl.cwl
inputs:
- id: in_datadir
  doc: '<s>    :       Data directory for writing output to'
  type: Directory?
  inputBinding:
    prefix: --datadir
- id: in_database
  doc: ':       Database file default:[datadir/uniref90.fasta]'
  type: File?
  inputBinding:
    prefix: --database
- id: in_proteome
  doc: ':       A proteome file in fasta format'
  type: File?
  inputBinding:
    prefix: --proteome
- id: in_test_mode
  doc: ':       Generate small database and proteome files for testing'
  type: boolean?
  inputBinding:
    prefix: --testmode
- id: in_verbose
  doc: ':       Turn on verbose messaging'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_datadir
  doc: '<s>    :       Data directory for writing output to'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_datadir)
hints: []
cwlVersion: v1.1
baseCommand:
- buildCustomModels.pl
