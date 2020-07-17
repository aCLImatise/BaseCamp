class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/polish_with_illumina_assembly.sh.cwl
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
- id: i
  doc: ''
  type: long
  inputBinding:
    prefix: -i
- id: m
  doc: ''
  type: boolean
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- polish_with_illumina_assembly.sh
