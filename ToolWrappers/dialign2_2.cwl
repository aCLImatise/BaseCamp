class: CommandLineTool
id: dialign2_2.cwl
inputs:
- id: in_dna_sequences_nucleotide
  doc: DNA sequences; similarity calculated at the nucleotide level
  type: boolean
  inputBinding:
    prefix: -n
- id: in_nt
  doc: "DNA sequences; similarity calculated at the peptide level\n(by translation\
    \ using the genetic code)"
  type: boolean
  inputBinding:
    prefix: -nt
- id: in_lgs
  doc: "long genomic sequences: Both nucleotide and peptide\nsimilarities calculated"
  type: boolean
  inputBinding:
    prefix: -lgs
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dialign2-2
