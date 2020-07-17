class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/remove_utrs.py.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: remove
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: utrs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: gff_slash_gtf_dot
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: gff
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_utrs.py
