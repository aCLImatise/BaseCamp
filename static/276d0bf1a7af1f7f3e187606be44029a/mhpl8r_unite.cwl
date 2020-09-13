class: CommandLineTool
id: ../../../mhpl8r_unite.cwl
inputs:
- id: in_out
  doc: "write output to \"FILE\"; by default, output is written\nto the terminal (standard\
    \ output)"
  type: File
  inputBinding:
    prefix: --out
- id: in_seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "write output to \"FILE\"; by default, output is written\nto the terminal (standard\
    \ output)"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- mhpl8r
- unite
