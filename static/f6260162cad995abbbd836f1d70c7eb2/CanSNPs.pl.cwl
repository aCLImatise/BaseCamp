class: CommandLineTool
id: CanSNPs.pl.cwl
inputs:
- id: in_group
  doc: "Group inforamtion in tab-delimited text file [mutually exclusive to list]\n\
    ex:   ID               Group\nfasta_header_A   A\nfasta_header_B   A\nfasta_header_C\
    \   B\nfasta_header_D   B"
  type: boolean
  inputBinding:
    prefix: --group
- id: in_threshold
  doc: Fraction of nucleotide in a group for defining Canonical SNPs (default :0.5)
  type: boolean
  inputBinding:
    prefix: --threshold
- id: in_symbol
  doc: 'Not Canonical nt will use symbol in the output (default: "-")'
  type: boolean
  inputBinding:
    prefix: --symbol
- id: in_or
  doc: "--list     file with a list fasta headers. one per line [mutually exclusive\
    \ to group]\nThe list will be treated as One group. All other sequences in the\
    \ input\nalignment will be as Another group."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- CanSNPs.pl
