class: CommandLineTool
id: pyprophet_statistics.cwl
inputs:
- id: in_in
  doc: PyProphet input file.  [required]
  type: File?
  inputBinding:
    prefix: --in
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- statistics
