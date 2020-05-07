class: CommandLineTool
id: NGSDImportORPHA.cwl
inputs:
- id: terms
  doc: Terms XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20cross%20referenced%20with%20other%20nomenclatures'.
  type: File
  inputBinding:
    prefix: -terms
- id: genes
  doc: Terms<>genes XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20with%20their%20associated%20genes'.
  type: File
  inputBinding:
    prefix: -genes
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
- NGSDImportORPHA
