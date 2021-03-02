class: CommandLineTool
id: debruijn.cwl
inputs:
- id: in_word_size
  doc: word size [Integer]
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_alphabet
  doc: alphabet
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- debruijn
