class: CommandLineTool
id: bioformats_renameseq.cwl
inputs:
- id: renaming_table
  doc: a file containing a table of original and new sequence names
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: a file to change sequence names in
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: an output file with renamed sequences
  type: string
  inputBinding:
    position: 2
- id: fast_a
  doc: the input file is of the FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: column
  doc: the number of the column that contains sequence names to be changed staring
    from 1
  type: string
  inputBinding:
    prefix: --column
- id: revert
  doc: perform reverse renaming, that is, change original and new names in the renaming
    table
  type: boolean
  inputBinding:
    prefix: --revert
- id: no_description
  doc: remove descriptions from FASTA sequence names
  type: boolean
  inputBinding:
    prefix: --no_description
- id: comment_char
  doc: a character that designates comment lines in the specified plain-text file
  type: string
  inputBinding:
    prefix: --comment_char
- id: separator
  doc: a symbol that separates columns in the specified plain-text file
  type: string
  inputBinding:
    prefix: --separator
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- renameseq
