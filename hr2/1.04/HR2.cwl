class: CommandLineTool
id: HR2.exe.cwl
inputs:
- id: x
  doc: key   mass (6 decimals shown)
  type: string
  inputBinding:
    position: 0
- id: c
  doc: -C       12.000000
  type: string
  inputBinding:
    position: 0
- id: ic
  doc: -1       13.003355
  type: string
  inputBinding:
    position: 1
- id: h
  doc: -H        1.007825
  type: string
  inputBinding:
    position: 2
- id: ih
  doc: -D        2.014102
  type: string
  inputBinding:
    position: 3
- id: n
  doc: -N       14.003074
  type: string
  inputBinding:
    position: 4
- id: in
  doc: -M       15.000109
  type: string
  inputBinding:
    position: 5
- id: o
  doc: -O       15.994915
  type: string
  inputBinding:
    position: 6
- id: f
  doc: -F       18.998403
  type: string
  inputBinding:
    position: 7
- id: na
  doc: -A       22.989769
  type: string
  inputBinding:
    position: 8
- id: si
  doc: -I       27.976927
  type: string
  inputBinding:
    position: 9
- id: p
  doc: -P       30.973762
  type: string
  inputBinding:
    position: 10
- id: s
  doc: -S       31.972071
  type: string
  inputBinding:
    position: 11
- id: cl
  doc: -L       34.968853
  type: string
  inputBinding:
    position: 12
- id: icl
  doc: -E       36.965903
  type: string
  inputBinding:
    position: 13
- id: br
  doc: -B       78.918337
  type: string
  inputBinding:
    position: 14
- id: ibr
  doc: -G       80.916291
  type: string
  inputBinding:
    position: 15
- id: k
  doc: -K       38.963707
  type: string
  inputBinding:
    position: 16
- id: ik
  doc: -J       40.961826
  type: string
  inputBinding:
    position: 17
outputs: []
cwlVersion: v1.1
baseCommand:
- HR2.exe
