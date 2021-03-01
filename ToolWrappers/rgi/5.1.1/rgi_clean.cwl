class: CommandLineTool
id: rgi_clean.cwl
inputs:
- id: in_local
  doc: "use local database (default: uses database in executable\ndirectory)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- clean
