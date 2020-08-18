class: CommandLineTool
id: ../../../pfbtopfa_out_in1.cwl
inputs:
- id: pfb_top_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot_pfb
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_do_tpfa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pfbtopfa
- out
- in1
