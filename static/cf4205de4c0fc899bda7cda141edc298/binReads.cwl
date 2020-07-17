class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/binReads.pl.cwl
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
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: view
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
- binReads.pl
