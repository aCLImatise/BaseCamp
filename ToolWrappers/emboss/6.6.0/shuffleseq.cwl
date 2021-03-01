class: CommandLineTool
id: shuffleseq.cwl
inputs:
- id: in_shuffle
  doc: integer    [1] Number of shuffles (Any integer value)
  type: boolean?
  inputBinding:
    prefix: -shuffle
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- shuffleseq
