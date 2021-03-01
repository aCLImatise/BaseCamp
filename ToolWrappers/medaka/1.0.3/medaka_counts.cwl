class: CommandLineTool
id: medaka_counts.cwl
inputs:
- id: in_print
  doc: 'print counts. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --print
- id: in_d_types
  doc: 'perform a multi-datatype tests. (default: None)'
  type: string[]
  inputBinding:
    prefix: --dtypes
- id: in_norm
  doc: "additional normalisation tests. (total, fwd_rev)\n(default: None)\n"
  type: string[]
  inputBinding:
    prefix: --norm
- id: in_bam
  doc: alignment file.
  type: string
  inputBinding:
    position: 0
- id: in_region
  doc: alignment region to sample.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medaka_counts
