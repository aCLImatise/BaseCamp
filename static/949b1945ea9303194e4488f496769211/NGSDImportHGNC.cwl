class: CommandLineTool
id: NGSDImportHGNC.cwl
inputs:
- id: in
  doc: HGNC flat file (download and unzip ftp://ftp.ebi.ac.uk/pub/databases/genenames/hgnc_complete_set.txt.gz)
  type: File
  inputBinding:
    prefix: -in
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
- NGSDImportHGNC
