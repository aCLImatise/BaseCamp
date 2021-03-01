class: CommandLineTool
id: wc.cwl
inputs:
- id: in_bytes
  doc: print the byte counts
  type: boolean?
  inputBinding:
    prefix: --bytes
- id: in_chars
  doc: print the character counts
  type: boolean?
  inputBinding:
    prefix: --chars
- id: in_lines
  doc: print the newline counts
  type: boolean?
  inputBinding:
    prefix: --lines
- id: in_files_zero_from
  doc: "read input from the files specified by\nNUL-terminated names in file F;\n\
    If F is - then read names from standard input"
  type: long?
  inputBinding:
    prefix: --files0-from
- id: in_max_line_length
  doc: print the maximum display width
  type: boolean?
  inputBinding:
    prefix: --max-line-length
- id: in_words
  doc: print the word counts
  type: boolean?
  inputBinding:
    prefix: --words
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wc
