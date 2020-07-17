class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_collate.cwl
inputs:
- id: reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: threads
  doc: Number of additional threads to use [0]
  type: long
  inputBinding:
    prefix: --threads
- id: ou
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Ou
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: collate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- collate
