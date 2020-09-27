class: CommandLineTool
id: bioformats_renameseq.cwl
inputs:
- id: in_fast_a
  doc: the input file is of the FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_column
  doc: "the number of the column that contains sequence names\nto be changed staring\
    \ from 1"
  type: long
  inputBinding:
    prefix: --column
- id: in_revert
  doc: "perform reverse renaming, that is, change original and\nnew names in the renaming\
    \ table"
  type: boolean
  inputBinding:
    prefix: --revert
- id: in_no_description
  doc: remove descriptions from FASTA sequence names
  type: boolean
  inputBinding:
    prefix: --no_description
- id: in_comment_char
  doc: "a character that designates comment lines in the\nspecified plain-text file"
  type: File
  inputBinding:
    prefix: --comment_char
- id: in_separator
  doc: "a symbol that separates columns in the specified\nplain-text file\n"
  type: File
  inputBinding:
    prefix: --separator
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_renaming_table
  doc: a file containing a table of original and new sequence
  type: string
  inputBinding:
    position: 0
- id: in_names
  doc: input_file            a file to change sequence names in
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: an output file with renamed sequences
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioformats
- renameseq
