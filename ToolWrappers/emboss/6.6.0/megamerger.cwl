class: CommandLineTool
id: megamerger.cwl
inputs:
- id: in_word_size
  doc: integer    [20] Word size (Integer 2 or more)
  type: boolean?
  inputBinding:
    prefix: -wordsize
- id: in_prefer
  doc: "boolean    [N] When a mismatch between the two sequence\nis discovered, one\
    \ or other of the two\nsequences must be used to create the merged\nsequence over\
    \ this mismatch region. The\ndefault action is to create the merged\nsequence\
    \ using the sequence where the\nmismatch is closest to that sequence's\ncentre.\
    \ If this option is used, then the\nfirst sequence (seqa) will always be used\
    \ in\npreference to the other sequence when there\nis a mismatch."
  type: boolean?
  inputBinding:
    prefix: -prefer
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- megamerger
