class: CommandLineTool
id: fasta_multigrep.pl.cwl
inputs:
- id: in_list
  doc: Colon (:) separated list of Fasta IDs to extract (mandatory)
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_fa
  doc: Input file in Fasta format (mandatory)
  type: boolean?
  inputBinding:
    prefix: --fa
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean?
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta_multigrep.pl
