class: CommandLineTool
id: _seqmatchall.cwl
inputs:
- id: in_word_size
  doc: integer    [4] Word size (Integer 2 or more)
  type: boolean?
  inputBinding:
    prefix: -wordsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _seqmatchall
