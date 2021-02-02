class: CommandLineTool
id: cutseq.cwl
inputs:
- id: in_from
  doc: "integer    [Start of sequence (0)] This is the start\nposition (inclusive)\
    \ of the section of the\nsequence that you wish to remove. (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -from
- id: in_to
  doc: "integer    [End of sequence (0)] This is the end\nposition (inclusive) of\
    \ the section of the\nsequence that you wish to remove. (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -to
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cutseq
