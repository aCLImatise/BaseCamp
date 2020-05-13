class: CommandLineTool
id: asmOutputStatistics.cwl
inputs:
- id: a
  doc: read the assembly from here
  type: string
  inputBinding:
    prefix: -a
- id: g
  doc: gatekeeper store
  type: string
  inputBinding:
    prefix: -G
- id: o
  doc: overlap store
  type: string
  inputBinding:
    prefix: -O
- id: t
  doc: v    tigStore and version
  type: string
  inputBinding:
    prefix: -T
- id: c
  doc: v     scaffolder checkpoint file name and version
  type: string
  inputBinding:
    prefix: -C
- id: o
  doc: write the output here
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- asmOutputStatistics
