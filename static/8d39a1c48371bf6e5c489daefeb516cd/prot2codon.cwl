class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prot2codon.cwl
inputs:
- id: multi_fast_a_or_stockholm_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- prot2codon
