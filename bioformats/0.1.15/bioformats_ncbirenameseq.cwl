class: CommandLineTool
id: bioformats_ncbirenameseq.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: the input file is of the FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: column
  doc: the number of the column that contains sequence names to be changed (1 by default)
  type: string
  inputBinding:
    prefix: --column
- id: comment_char
  doc: a character designating comment lines in the specified plain text file
  type: string
  inputBinding:
    prefix: --comment_char
- id: separator
  doc: a symbol separating columns in the specified plain text file
  type: string
  inputBinding:
    prefix: --separator
- id: chr
  doc: a name of a file containing NCBI chromosome accession numbers
  type: string
  inputBinding:
    prefix: --chr
- id: unloc
  doc: a name of a file containing NCBI accession numbers of unlocalized fragments
  type: string
  inputBinding:
    prefix: --unloc
- id: un_pl
  doc: a name of a file containing NCBI accession numbers of unplaced fragments
  type: string
  inputBinding:
    prefix: --unpl
- id: prefix
  doc: a prefix to be added to sequence names
  type: string
  inputBinding:
    prefix: --prefix
- id: prefix_chr
  doc: a prefix to be added to chromosome names
  type: string
  inputBinding:
    prefix: --prefix_chr
- id: prefix_unloc
  doc: a prefix to be added to unlocalized fragment names
  type: string
  inputBinding:
    prefix: --prefix_unloc
- id: prefix_un_pl
  doc: a prefix to be added to unplaced fragment names
  type: string
  inputBinding:
    prefix: --prefix_unpl
- id: suffix
  doc: a suffix to be added to sequence names
  type: string
  inputBinding:
    prefix: --suffix
- id: suffix_chr
  doc: a suffix to be added to chromosome names
  type: string
  inputBinding:
    prefix: --suffix_chr
- id: suffix_unloc
  doc: a suffix to be added to unlocalized fragment names
  type: string
  inputBinding:
    prefix: --suffix_unloc
- id: suffix_un_pl
  doc: a suffix to be added to unplaced fragment names
  type: string
  inputBinding:
    prefix: --suffix_unpl
- id: revert
  doc: perform reverse renaming, that is, change original and new names in the renaming
    table
  type: boolean
  inputBinding:
    prefix: --revert
- id: no_version
  doc: remove a sequence version from an accession number
  type: boolean
  inputBinding:
    prefix: --no_version
- id: no_description
  doc: remove descriptions from FASTA sequence headers
  type: boolean
  inputBinding:
    prefix: --no_description
- id: output_table
  doc: write the renaming table to the specified file
  type: string
  inputBinding:
    prefix: --output_table
outputs: []
cwlVersion: v1.1
baseCommand:
- bioformats
- ncbirenameseq
