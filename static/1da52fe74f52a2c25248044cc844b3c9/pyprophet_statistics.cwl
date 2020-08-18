class: CommandLineTool
id: ../../../pyprophet_statistics.cwl
inputs:
- id: in
  doc: PyProphet input file.  [required]
  type: File
  inputBinding:
    prefix: --in
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- statistics
