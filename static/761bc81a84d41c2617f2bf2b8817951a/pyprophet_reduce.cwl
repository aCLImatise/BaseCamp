class: CommandLineTool
id: pyprophet_reduce.cwl
inputs:
- id: in
  doc: Scored PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
- id: out
  doc: Reduced OSWR output file.
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- reduce
