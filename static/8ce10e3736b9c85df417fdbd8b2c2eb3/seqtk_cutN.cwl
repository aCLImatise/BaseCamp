class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seqtk_cutN.cwl
inputs:
- id: min_size_n
  doc: min size of N tract [1000]
  type: long
  inputBinding:
    prefix: -n
- id: penalty_for_a
  doc: penalty for a non-N [10]
  type: long
  inputBinding:
    prefix: -p
- id: print_gaps_sequence
  doc: print gaps only, no sequence
  type: boolean
  inputBinding:
    prefix: -g
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- cutN
