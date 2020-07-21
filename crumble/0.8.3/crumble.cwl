class: CommandLineTool
id: ../../../crumble.cwl
inputs:
- id: one
  doc: ': -p0 -Q75 -D150 -X1  - M0.5 -Z0.1 -V0.5 -P3.0 -s1.0,5 -i2.0,1 -m5'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: three
  doc: ': -p0 -Q75 -D150 -X1   -M0.5 -Z0.1 -V0.5 -P3.0 -s1.0,0 -i1.1,2 -m0'
  type: boolean
  inputBinding:
    prefix: '-3'
- id: five
  doc: ': -p0 -Q75 -D150 -X1   -M0.5 -Z0.1 -V0.5 -P3.0 -s0.0,0 -i1.1,2 -m0'
  type: boolean
  inputBinding:
    prefix: '-5'
- id: p_q_
  doc: ': -p0 -Q75 -D150 -X1   -M1   -Z1   -V0   -P999 -s0.0,0 -i1.1,2 -m0'
  type: boolean
  inputBinding:
    prefix: '-7'
- id: eight
  doc: ': -p0 -Q70 -D125 -X1.5 -M1   -Z1   -V0   -P999 -s0.0,0 -i1.0,2 -m0'
  type: boolean
  inputBinding:
    prefix: '-8'
- id: nine
  doc: ': -p8 -Q70 -D125 -X1.5 -M1   -Z1   -V0   -P999 -s0.0,0 -i1.0,2 -m0'
  type: boolean
  inputBinding:
    prefix: '-9'
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crumble
