class: CommandLineTool
id: GenesToApproved.cwl
inputs:
- id: in
  doc: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output TXT file with approved gene symbols. If unset, writes to STDOUT. Default\
    \ value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: report_ambiguous
  doc: "Report all matching genes for ambiguous previous/synonymous symbols - instead\
    \ of an error. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -report_ambiguous
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
- GenesToApproved
