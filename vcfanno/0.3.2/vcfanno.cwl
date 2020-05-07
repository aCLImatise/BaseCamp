class: CommandLineTool
id: vcfanno.cwl
inputs:
- id: base_path
  doc: optional base-path to prepend to annotation files in the config
  type: string
  inputBinding:
    prefix: -base-path
- id: ends
  doc: annotate the start and end as well as the interval itself.
  type: boolean
  inputBinding:
    prefix: -ends
- id: lua
  doc: optional path to a file containing custom javascript functions to be used as
    ops
  type: string
  inputBinding:
    prefix: -lua
- id: p
  doc: number of processes to use. (default 2)
  type: long
  inputBinding:
    prefix: -p
- id: permissive_overlap
  doc: annotate with an overlapping variant even it doesn't share the same ref and
    alt alleles. Default is to require exact match between variants.
  type: boolean
  inputBinding:
    prefix: -permissive-overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfanno
