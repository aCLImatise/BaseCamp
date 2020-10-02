class: CommandLineTool
id: akt_unrelated.cwl
inputs:
- id: in_km_in
  doc: ':                     threshold for relatedness (0.025)'
  type: boolean
  inputBinding:
    prefix: --kmin
- id: in_its
  doc: ':                      number of iterations to find unrelated (10)'
  type: boolean
  inputBinding:
    prefix: --its
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- akt
- unrelated
