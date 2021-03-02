class: CommandLineTool
id: fasta_re_match.cwl
inputs:
- id: in_norc
  doc: Only find matches to motifs in the given strand
  type: boolean?
  inputBinding:
    prefix: -norc
- id: in_erase
  doc: "erases this motif before finding matches;\nrepeatable; order matters!"
  type: string?
  inputBinding:
    prefix: -erase
- id: in_iupac_dna_motif
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
- fasta-re-match
