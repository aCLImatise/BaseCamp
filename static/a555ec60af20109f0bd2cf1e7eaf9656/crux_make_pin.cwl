class: CommandLineTool
id: ../../../crux_make_pin.cwl
inputs:
- id: in_sida_k
  doc: set to T, then the "distinct matches/spectrum" column must be
  type: string
  inputBinding:
    prefix: --sidak
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crux
- make-pin
