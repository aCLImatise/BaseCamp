class: CommandLineTool
id: prot2codon_multi_FASTA or Stockholm alignment.cwl
inputs:
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prot2codon
- multi-FASTA or Stockholm alignment
