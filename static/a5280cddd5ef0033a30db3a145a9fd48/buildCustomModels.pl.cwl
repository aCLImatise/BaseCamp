class: CommandLineTool
id: buildCustomModels.pl.cwl
inputs:
- id: in__datadir_s
  doc: '/ --datadir  <s>    :       Data directory for writing output to'
  type: Directory
  inputBinding:
    prefix: -d
- id: in_db
  doc: '/ --database <s>    :       Database file default:[datadir/uniref90.fasta]'
  type: boolean
  inputBinding:
    prefix: -db
- id: in__proteome_proteome
  doc: '/ --proteome <s>    :       A proteome file in fasta format'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__testmode_generate
  doc: '/ --testmode        :       Generate small database and proteome files for
    testing'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__verbose_turn
  doc: '/ --verbose         :       Turn on verbose messaging'
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__datadir_s
  doc: '/ --datadir  <s>    :       Data directory for writing output to'
  type: Directory
  outputBinding:
    glob: $(inputs.in__datadir_s)
cwlVersion: v1.1
baseCommand:
- buildCustomModels.pl
