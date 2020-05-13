class: CommandLineTool
id: NGSDImportEnsembl.cwl
inputs:
- id: in
  doc: Ensembl transcript file (download and unzip ftp://ftp.ensembl.org/pub/grch37/release-87/gff3/homo_sapiens/Homo_sapiens.GRCh37.87.chr.gff3.gz).
  type: File
  inputBinding:
    prefix: -in
- id: all
  doc: "If set, all transcripts are imported (the default is to skip transcripts not\
    \ labeled as with the 'GENCODE basic' tag). Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -all
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: force
  doc: "If set, overwrites old data. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -force
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- NGSDImportEnsembl
