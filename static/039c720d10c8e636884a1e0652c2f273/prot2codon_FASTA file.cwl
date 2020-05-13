class: CommandLineTool
id: prot2codon_FASTA file.cwl
inputs:
- id: multi_fasta_or_stockholm_alignment
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
- FASTA file
