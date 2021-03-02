class: CommandLineTool
id: vcfanno.cwl
inputs:
- id: in_base_path
  doc: optional base-path to prepend to annotation files in the config
  type: File?
  inputBinding:
    prefix: -base-path
- id: in_ends
  doc: annotate the start and end as well as the interval itself.
  type: boolean?
  inputBinding:
    prefix: -ends
- id: in_lua
  doc: optional path to a file containing custom javascript functions to be used as
    ops
  type: File?
  inputBinding:
    prefix: -lua
- id: in_number_use_default
  doc: number of processes to use. (default 2)
  type: long?
  inputBinding:
    prefix: -p
- id: in_permissive_overlap
  doc: "annotate with an overlapping variant even it doesn't share the same ref and\
    \ alt alleles. Default is to require exact match between variants.\n"
  type: boolean?
  inputBinding:
    prefix: -permissive-overlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfanno
