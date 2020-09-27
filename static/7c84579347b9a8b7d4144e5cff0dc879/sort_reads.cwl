class: CommandLineTool
id: sort_reads.cwl
inputs:
- id: in_paired
  doc: if the reads are paired-end in one file
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_merge
  doc: if the reads are paired-end in two files
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_filter
  doc: filter out reads containing 'N'
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_min_length
  doc: (=0)              minimum length
  type: long
  inputBinding:
    prefix: --min_length
- id: in_fq_two_fa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tmp_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sort_reads
