class: CommandLineTool
id: ../../../run_sepp.sh.cwl
inputs:
- id: in_x
  doc: ''
  type: long
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run-sepp.sh
