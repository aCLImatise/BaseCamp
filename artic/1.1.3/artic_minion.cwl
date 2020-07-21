class: CommandLineTool
id: ../../../artic_minion.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: medaka
  doc: ''
  type: boolean
  inputBinding:
    prefix: --medaka
- id: minimap_two
  doc: ''
  type: boolean
  inputBinding:
    prefix: --minimap2
- id: bwa
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bwa
- id: scheme
  doc: The name of the scheme.
  type: string
  inputBinding:
    position: 0
- id: sample
  doc: The name of the sample.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- minion
