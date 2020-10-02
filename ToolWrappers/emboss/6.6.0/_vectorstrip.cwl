class: CommandLineTool
id: _vectorstrip.cwl
inputs:
- id: in_mismatch
  doc: "integer    [10] Max allowed % mismatch (Any integer\nvalue)"
  type: boolean
  inputBinding:
    prefix: -mismatch
- id: in_all_sequences
  doc: boolean    [N] Show all sequences in output
  type: boolean
  inputBinding:
    prefix: -allsequences
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _vectorstrip
