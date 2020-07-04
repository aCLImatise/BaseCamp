class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merge_contigs.sh.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- merge_contigs.sh
