class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convert_cdna_match_gff3.py.cwl
inputs:
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
- id: convert
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: cdna_match
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: gff_three
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: exonerate
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: into
  doc: ''
  type: long
  inputBinding:
    position: 8
- id: either
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: var_10
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: match_slash_match_part
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 12
- id: var_13
  doc: ''
  type: string
  inputBinding:
    position: 13
- id: gtf
  doc: ''
  type: string
  inputBinding:
    position: 14
- id: file_dot
  doc: ''
  type: File
  inputBinding:
    position: 15
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_cdna_match_gff3.py
