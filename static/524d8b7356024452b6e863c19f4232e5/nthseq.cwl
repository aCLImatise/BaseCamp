class: CommandLineTool
id: nthseq.cwl
inputs:
- id: in_number
  doc: "integer    [1] The number of the sequence to output\n(Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -number
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nthseq
