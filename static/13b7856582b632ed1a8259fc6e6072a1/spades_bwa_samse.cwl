class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spades_bwa_samse.cwl
inputs:
- id: n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sam_se
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_do_tsai
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- samse
