class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_calmd.cwl
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
- id: eu_bra_esq
  doc: ''
  type: boolean
  inputBinding:
    prefix: -eubrAESQ
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: calm_d
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- calmd
