class: CommandLineTool
id: NGSDAnnotateCNV.cwl
inputs:
- id: in
  doc: TSV file containing CNV.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: TSV output file.
  type: File
  inputBinding:
    prefix: -out
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
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
- NGSDAnnotateCNV
