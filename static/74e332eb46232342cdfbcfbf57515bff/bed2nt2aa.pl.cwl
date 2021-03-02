class: CommandLineTool
id: bed2nt2aa.pl.cwl
inputs:
- id: in_bed
  doc: Input file in BED6 format (mandatory)
  type: boolean?
  inputBinding:
    prefix: --bed
- id: in_fa
  doc: Input file in Fasta format (mandatory)
  type: boolean?
  inputBinding:
    prefix: --fa
- id: in_aa
  doc: "Translate nucleotide into amino acid sequences, providing all three\npossible\
    \ frames"
  type: boolean?
  inputBinding:
    prefix: --aa
- id: in_stdout
  doc: Write output to STDOUT instead of an output file 'sequence.fa'
  type: File?
  inputBinding:
    prefix: --stdout
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stdout
  doc: Write output to STDOUT instead of an output file 'sequence.fa'
  type: File?
  outputBinding:
    glob: $(inputs.in_stdout)
hints: []
cwlVersion: v1.1
baseCommand:
- bed2nt2aa.pl
