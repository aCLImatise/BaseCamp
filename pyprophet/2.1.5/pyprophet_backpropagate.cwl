class: CommandLineTool
id: pyprophet_backpropagate.cwl
inputs:
- id: in
  doc: Single run PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: Single run (with multi-run scores) PyProphet output file.
  type: File
  inputBinding:
    prefix: --out
- id: apply_scores
  doc: PyProphet multi-run scores file to apply.  [required]
  type: File
  inputBinding:
    prefix: --apply_scores
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- backpropagate
