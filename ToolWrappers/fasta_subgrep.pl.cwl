class: CommandLineTool
id: fasta_subgrep.pl.cwl
inputs:
- id: in_fa
  doc: Input file in Fasta format (mandatory)
  type: boolean
  inputBinding:
    prefix: --fa
- id: in_start
  doc: Start of the sequence interval to extract
  type: boolean
  inputBinding:
    prefix: --start
- id: in_end
  doc: End of the sequence interval to extract
  type: boolean
  inputBinding:
    prefix: --end
- id: in_id
  doc: "Fasta ID of the sequence to extract from. This is only required for\nmulti\
    \ Fasta input files."
  type: boolean
  inputBinding:
    prefix: --id
- id: in_strand
  doc: "Specify the strand to extract sequence data from. Allowed arguments\nare \"\
    +\" amd \"-\". In the latter case, retrieve reverse complement of\nthe sequence\
    \ interval from \"start\" to \"end\"."
  type: boolean
  inputBinding:
    prefix: --strand
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasta_subgrep.pl
