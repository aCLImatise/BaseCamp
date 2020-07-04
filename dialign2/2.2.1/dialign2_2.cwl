class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dialign2_2.cwl
inputs:
- id: dna_sequences_nucleotide
  doc: 'DNA sequences; similarity calculated at the nucleotide level '
  type: boolean
  inputBinding:
    prefix: -n
- id: nt
  doc: 'DNA sequences; similarity calculated at the peptide level (by translation
    using the genetic code) '
  type: boolean
  inputBinding:
    prefix: -nt
- id: lgs
  doc: 'long genomic sequences: Both nucleotide and peptide similarities calculated '
  type: boolean
  inputBinding:
    prefix: -lgs
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dialign2-2
