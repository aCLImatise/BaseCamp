class: CommandLineTool
id: bed2nt2aa.pl.cwl
inputs:
- id: bed
  doc: Input file in BED6 format (mandatory)
  type: boolean
  inputBinding:
    prefix: --bed
- id: fa
  doc: Input file in Fasta format (mandatory)
  type: boolean
  inputBinding:
    prefix: --fa
- id: aa
  doc: Translate nucleotide into amino acid sequences, providing all three possible
    frames
  type: boolean
  inputBinding:
    prefix: --aa
- id: stdout
  doc: Write output to STDOUT instead of an output file 'sequence.fa'
  type: boolean
  inputBinding:
    prefix: --stdout
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- bed2nt2aa.pl
