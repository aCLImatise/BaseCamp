class: CommandLineTool
id: fpa_index.cwl
inputs:
- id: in_filename
  doc: Write index of mapping passing filter in path passed as parameter
  type: File
  inputBinding:
    prefix: --filename
- id: in_type
  doc: "Type of index, only reference read when it's query, target or both of them\
    \ [default:\nboth]  [possible values: query, target, both]\n"
  type: string
  inputBinding:
    prefix: --type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fpa
- index
