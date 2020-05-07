class: CommandLineTool
id: wc.cwl
inputs:
- id: bytes
  doc: print the byte counts
  type: boolean
  inputBinding:
    prefix: --bytes
- id: chars
  doc: print the character counts
  type: boolean
  inputBinding:
    prefix: --chars
- id: lines
  doc: print the newline counts
  type: boolean
  inputBinding:
    prefix: --lines
- id: files_0_from
  doc: read input from the files specified by NUL-terminated names in file F; If F
    is - then read names from standard input
  type: string
  inputBinding:
    prefix: --files0-from
- id: max_line_length
  doc: print the maximum display width
  type: boolean
  inputBinding:
    prefix: --max-line-length
- id: words
  doc: print the word counts
  type: boolean
  inputBinding:
    prefix: --words
outputs: []
cwlVersion: v1.1
baseCommand:
- wc
