class: CommandLineTool
id: NGSDImportORPHA.cwl
inputs:
- id: in_terms
  doc: Terms XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20cross%20referenced%20with%20other%20nomenclatures'.
  type: File?
  inputBinding:
    prefix: -terms
- id: in_genes
  doc: Terms<>genes XML file from 'https://github.com/Orphanet/Orphadata.org/tree/master/Disorders%20with%20their%20associated%20genes'.
  type: File?
  inputBinding:
    prefix: -genes
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_force
  doc: "If set, overwrites old data.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- NGSDImportORPHA
