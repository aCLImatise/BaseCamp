class: CommandLineTool
id: NGSDInit.cwl
inputs:
- id: add
  doc: "Additional SQL script to execute after database initialization. Default value:\
    \ ''"
  type: File
  inputBinding:
    prefix: -add
- id: force
  doc: "Database password needed to re-initialize the production database. Default\
    \ value: ''"
  type: string
  inputBinding:
    prefix: -force
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
- NGSDInit
