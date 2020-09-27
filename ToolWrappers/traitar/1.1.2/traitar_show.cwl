class: CommandLineTool
id: traitar_show.cwl
inputs:
- id: in_predictor
  doc: '{phypat,phypat+PGL}'
  type: boolean
  inputBinding:
    prefix: --predictor
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- traitar
- show
