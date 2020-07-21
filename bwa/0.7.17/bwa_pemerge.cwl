class: CommandLineTool
id: ../../../bwa_pemerge.cwl
inputs:
- id: output_merged_reads
  doc: output merged reads only
  type: boolean
  inputBinding:
    prefix: -m
- id: output_unmerged_reads
  doc: output unmerged reads only
  type: boolean
  inputBinding:
    prefix: -u
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: minimum_end_overlap
  doc: minimum end overlap [10]
  type: long
  inputBinding:
    prefix: -T
- id: max_sum_errors
  doc: max sum of errors [70]
  type: long
  inputBinding:
    prefix: -Q
- id: mu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -mu
- id: read_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- pemerge
