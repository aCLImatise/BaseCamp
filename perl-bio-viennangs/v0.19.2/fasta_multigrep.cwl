class: CommandLineTool
id: fasta_multigrep.pl.cwl
inputs:
- id: list
  doc: Colon (:) separated list of Fasta IDs to extract (mandatory)
  type: boolean
  inputBinding:
    prefix: --list
- id: fa
  doc: Input file in Fasta format (mandatory)
  type: boolean
  inputBinding:
    prefix: --fa
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_multigrep.pl
