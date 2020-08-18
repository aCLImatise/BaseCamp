class: CommandLineTool
id: ../../../samtools_sort.cwl
inputs:
- id: sort_by_read
  doc: sort by read name
  type: boolean
  inputBinding:
    prefix: -n
- id: use_outprefix_full
  doc: use <out.prefix> as full file name instead of prefix
  type: boolean
  inputBinding:
    prefix: -f
- id: final_output_stdout
  doc: final output to stdout
  type: boolean
  inputBinding:
    prefix: -o
- id: compression_level_from
  doc: compression level, from 0 to 9 [-1]
  type: long
  inputBinding:
    prefix: -l
- id: at
  doc: number of sorting and compression threads [1]
  type: long
  inputBinding:
    prefix: -@
- id: max_memory_thread
  doc: max memory per thread; suffix K/M/G recognized [768M]
  type: long
  inputBinding:
    prefix: -m
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- sort
