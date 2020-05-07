class: CommandLineTool
id: head.cwl
inputs:
- id: bytes
  doc: =[-]NUM       print the first NUM bytes of each file; with the leading '-',
    print all but the last NUM bytes of each file
  type: boolean
  inputBinding:
    prefix: --bytes
- id: lines
  doc: =[-]NUM       print the first NUM lines instead of the first 10; with the leading
    '-', print all but the last NUM lines of each file
  type: boolean
  inputBinding:
    prefix: --lines
- id: silent
  doc: print headers giving file names
  type: string
  inputBinding:
    prefix: --silent
- id: verbose
  doc: print headers giving file names
  type: string
  inputBinding:
    prefix: --verbose
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- head
