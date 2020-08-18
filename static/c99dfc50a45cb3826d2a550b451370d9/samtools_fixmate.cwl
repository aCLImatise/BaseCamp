class: CommandLineTool
id: ../../../samtools_fixmate.cwl
inputs:
- id: remove_unmapped_reads
  doc: remove unmapped reads and secondary alignments
  type: boolean
  inputBinding:
    prefix: -r
- id: in_dot_names_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_names_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- fixmate
