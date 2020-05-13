class: CommandLineTool
id: pirs_simulate.cwl
inputs:
- id: l
  doc: Set read length
  type: string
  inputBinding:
    prefix: -l
- id: x
  doc: Set coverage
  type: string
  inputBinding:
    prefix: -x
- id: m
  doc: Set insert length mean
  type: string
  inputBinding:
    prefix: -m
- id: v
  doc: Set insert length standard deviation
  type: string
  inputBinding:
    prefix: -v
- id: j
  doc: Simulate jumping library
  type: boolean
  inputBinding:
    prefix: -j
- id: d
  doc: Simulate from diploid genome produced by `pirs diploid'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: Set output prefix
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pirs
- simulate
