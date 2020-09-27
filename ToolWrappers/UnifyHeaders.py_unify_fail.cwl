class: CommandLineTool
id: UnifyHeaders.py_unify_fail.cwl
inputs:
- id: in_unify_headers_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- UnifyHeaders.py
- unify-fail
