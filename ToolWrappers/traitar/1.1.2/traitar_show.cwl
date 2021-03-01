class: CommandLineTool
id: traitar_show.cwl
inputs:
- id: in_predictor
  doc: "{phypat,phypat+PGL}\npick phypat or phypat+PGL classifier"
  type: boolean?
  inputBinding:
    prefix: --predictor
- id: in_include_negative
  doc: "phenotype models archive; if set, look for the target\nin the phenotype in\
    \ the given phenotype collection\n"
  type: string?
  inputBinding:
    prefix: --include_negative
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- traitar
- show
