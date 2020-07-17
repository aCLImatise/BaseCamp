class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_targetcut.cwl
inputs:
- id: reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: q
  doc: ''
  type: long
  inputBinding:
    prefix: -Q
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: zero
  doc: ''
  type: string
  inputBinding:
    prefix: '-0'
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_cut
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- targetcut
