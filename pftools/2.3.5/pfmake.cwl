class: CommandLineTool
id: pfmake.cwl
inputs:
- id: a
  doc: ': asymmetrical gap weighting.'
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: ': block profile mode.'
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: ': circular profile.'
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: ': enable endgap-weighting mode.'
  type: boolean
  inputBinding:
    prefix: -e
- id: m
  doc: ': input sequences in MSA format.'
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: ': do not impose limit on line length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: ': symmetrical gap weighting.'
  type: boolean
  inputBinding:
    prefix: -s
- id: e
  doc: '<value>: gap extension penalty (default: 0.2).'
  type: boolean
  inputBinding:
    prefix: -E
- id: f
  doc: '<value>: output score multiplier (default: 100)'
  type: boolean
  inputBinding:
    prefix: -F
- id: g
  doc: '<value>: gap opening penalty (default: 2.1)'
  type: boolean
  inputBinding:
    prefix: -G
- id: h
  doc: '<value>: high cost initiation/termination score (default: *)'
  type: boolean
  inputBinding:
    prefix: -H
- id: i
  doc: '<value>: gap penalty multiplier increment (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -I
- id: l
  doc: '<value>: low cost initiation/termination score (default:  0).'
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: '<value>: maximum gap penalty multiplier (default: 0.333).'
  type: boolean
  inputBinding:
    prefix: -M
- id: s
  doc: '<value>: score matrix multiplier (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -S
- id: t
  doc: '<value>: gap region threshold (default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -T
- id: x
  doc: '<value>: gap excision threshold (default: 0.5)'
  type: boolean
  inputBinding:
    prefix: -X
outputs: []
cwlVersion: v1.1
baseCommand:
- pfmake
