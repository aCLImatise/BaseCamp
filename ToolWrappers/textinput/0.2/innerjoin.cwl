class: CommandLineTool
id: innerjoin.cwl
inputs:
- id: in_empty
  doc: replace missing input fields with EMPTY
  type: string?
  inputBinding:
    prefix: --empty
- id: in_main_fields
  doc: join on these FIELDS of MAIN-TABLE
  type: string?
  inputBinding:
    prefix: --main-fields
- id: in_lookup_fields
  doc: "join on these FIELDS of LOOKUP-TABLE\n"
  type: string?
  inputBinding:
    prefix: --lookup-fields
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- innerjoin
