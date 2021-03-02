class: CommandLineTool
id: pandoc_citeproc.cwl
inputs:
- id: in_man
  doc: print man page to stdout
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_license
  doc: print license to stdout
  type: boolean?
  inputBinding:
    prefix: --license
- id: in_bib_two_yaml
  doc: convert bibliography to YAML
  type: boolean?
  inputBinding:
    prefix: --bib2yaml
- id: in_bib_two_json
  doc: convert bibliography to JSON
  type: boolean?
  inputBinding:
    prefix: --bib2json
- id: in_format
  doc: bibliography format
  type: string?
  inputBinding:
    prefix: --format
- id: in_file_dot_dot
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pandoc-citeproc
