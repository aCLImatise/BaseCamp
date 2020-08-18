class: CommandLineTool
id: ../../../flye_samtools_fixmate.cwl
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
- id: fix_mate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_names_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_names_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- fixmate
