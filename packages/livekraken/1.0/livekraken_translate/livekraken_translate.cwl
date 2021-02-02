class: CommandLineTool
id: livekraken_translate.cwl
inputs:
- id: in_mpa_format
  doc: ''
  type: boolean
  inputBinding:
    prefix: --mpa-format
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- livekraken-translate
