class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta_re_match.cwl
inputs:
- id: norc
  doc: Only find matches to motifs in the given strand
  type: boolean
  inputBinding:
    prefix: -norc
- id: erase
  doc: erases this motif before finding matches;  repeatable; order matters!
  type: string
  inputBinding:
    prefix: -erase
- id: iupac_dna_motif
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-re-match
