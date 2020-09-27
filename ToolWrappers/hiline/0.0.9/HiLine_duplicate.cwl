class: CommandLineTool
id: HiLine_duplicate.cwl
inputs:
- id: in_sort
  doc: / --no-sort  Sort and index output. Default=sort
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_output
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
- HiLine
- duplicate
