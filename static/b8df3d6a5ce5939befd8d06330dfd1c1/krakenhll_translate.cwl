class: CommandLineTool
id: krakenhll_translate.cwl
inputs:
- id: in_mpa_format
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --mpa-format
- id: in_db
  doc: ''
  type: string?
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- krakenhll-translate
