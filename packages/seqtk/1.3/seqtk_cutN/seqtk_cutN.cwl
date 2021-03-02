class: CommandLineTool
id: seqtk_cutN.cwl
inputs:
- id: in_min_size_tract
  doc: min size of N tract [1000]
  type: long?
  inputBinding:
    prefix: -n
- id: in_penalty_for_nonn
  doc: penalty for a non-N [10]
  type: long?
  inputBinding:
    prefix: -p
- id: in_print_gaps_only
  doc: print gaps only, no sequence
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqtk
- cutN
