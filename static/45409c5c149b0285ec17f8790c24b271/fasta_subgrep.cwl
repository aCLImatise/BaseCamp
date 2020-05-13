class: CommandLineTool
id: fasta_subgrep.pl.cwl
inputs:
- id: fa
  doc: Input file in Fasta format (mandatory)
  type: boolean
  inputBinding:
    prefix: --fa
- id: start
  doc: Start of the sequence interval to extract
  type: boolean
  inputBinding:
    prefix: --start
- id: end
  doc: End of the sequence interval to extract
  type: boolean
  inputBinding:
    prefix: --end
- id: id
  doc: Fasta ID of the sequence to extract from. This is only required for multi Fasta
    input files.
  type: boolean
  inputBinding:
    prefix: --id
- id: strand
  doc: Specify the strand to extract sequence data from. Allowed arguments are "+"
    amd "-". In the latter case, retrieve reverse complement of the sequence interval
    from "start" to "end".
  type: boolean
  inputBinding:
    prefix: --strand
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_subgrep.pl
