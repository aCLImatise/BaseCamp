class: CommandLineTool
id: alignKMers.cwl
inputs:
- id: in__unaligned_kmers
  doc: = unaligned k-mers
  type: File?
  inputBinding:
    prefix: -i
- id: in_minimum_overlap_align
  doc: = minimum overlap to align [default=3]
  type: long?
  inputBinding:
    prefix: -v
- id: in_also_reverse_complement
  doc: = also reverse complement
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__penalty_mismatches
  doc: = penalty for mismatches [default=1]
  type: long?
  inputBinding:
    prefix: -m
- id: in_o
  doc: = where to output results [default=stdout]
  type: string?
  inputBinding:
    prefix: -o
- id: in_l
  doc: = where to output results [default=stderr]
  type: File?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- alignKMers
