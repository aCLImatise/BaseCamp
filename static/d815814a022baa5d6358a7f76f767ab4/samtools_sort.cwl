class: CommandLineTool
id: samtools_sort.cwl
inputs:
- id: in_sort_read_name
  doc: sort by read name
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_use_outprefix_prefix
  doc: use <out.prefix> as full file name instead of prefix
  type: File?
  inputBinding:
    prefix: -f
- id: in_final_output_stdout
  doc: final output to stdout
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_compression_level_from
  doc: compression level, from 0 to 9 [-1]
  type: long?
  inputBinding:
    prefix: -l
- id: in_at
  doc: number of sorting and compression threads [1]
  type: long?
  inputBinding:
    prefix: -@
- id: in_max_memory_thread
  doc: max memory per thread; suffix K/M/G recognized [768M]
  type: long?
  inputBinding:
    prefix: -m
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_outprefix_prefix
  doc: use <out.prefix> as full file name instead of prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_use_outprefix_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- sort
