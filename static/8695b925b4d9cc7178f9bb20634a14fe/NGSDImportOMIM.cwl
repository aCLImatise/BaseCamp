class: CommandLineTool
id: NGSDImportOMIM.cwl
inputs:
- id: gene
  doc: OMIM 'mim2gene.txt' file from 'http://omim.org/downloads/'.
  type: File
  inputBinding:
    prefix: -gene
- id: morbid
  doc: OMIM 'morbidmap.txt' file from 'http://omim.org/downloads/'.
  type: File
  inputBinding:
    prefix: -morbid
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
- NGSDImportOMIM
