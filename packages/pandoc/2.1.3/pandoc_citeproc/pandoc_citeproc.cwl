class: CommandLineTool
id: pandoc_citeproc.cwl
inputs:
- id: in_man
  doc: print man page to stdout
  type: boolean
  inputBinding:
    prefix: --man
- id: in_license
  doc: print license to stdout
  type: boolean
  inputBinding:
    prefix: --license
- id: in__version_show
  doc: --version        show program version
  type: boolean
  inputBinding:
    prefix: -V
- id: in__bibyaml_convert
  doc: --bib2yaml       convert bibliography to YAML
  type: boolean
  inputBinding:
    prefix: -y
- id: in__bibjson_convert
  doc: --bib2json       convert bibliography to JSON
  type: boolean
  inputBinding:
    prefix: -j
- id: in_format
  doc: bibliography format
  type: string
  inputBinding:
    prefix: --format
- id: in_file_dot_dot
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pandoc-citeproc
