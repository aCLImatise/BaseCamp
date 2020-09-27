class: CommandLineTool
id: head.cwl
inputs:
- id: in_bytes
  doc: "=[-]NUM       print the first NUM bytes of each file;\nwith the leading '-',\
    \ print all but the last\nNUM bytes of each file"
  type: boolean
  inputBinding:
    prefix: --bytes
- id: in_lines
  doc: "=[-]NUM       print the first NUM lines instead of the first 10;\nwith the\
    \ leading '-', print all but the last\nNUM lines of each file"
  type: boolean
  inputBinding:
    prefix: --lines
- id: in_silent
  doc: never print headers giving file names
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: always print headers giving file names
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- head
