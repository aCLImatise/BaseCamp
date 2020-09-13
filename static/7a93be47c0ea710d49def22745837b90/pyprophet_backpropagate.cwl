class: CommandLineTool
id: ../../../pyprophet_backpropagate.cwl
inputs:
- id: in_in
  doc: Single run PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: Single run (with multi-run scores) PyProphet output
  type: File
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyprophet
- backpropagate
