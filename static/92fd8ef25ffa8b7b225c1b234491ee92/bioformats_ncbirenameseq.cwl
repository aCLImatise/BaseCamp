class: CommandLineTool
id: bioformats_ncbirenameseq.cwl
inputs:
- id: in_fast_a
  doc: the input file is of the FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_column
  doc: the number of the column that contains sequence names to be changed (1 by default)
  type: long?
  inputBinding:
    prefix: --column
- id: in_comment_char
  doc: a character designating comment lines in the specified plain text file
  type: File?
  inputBinding:
    prefix: --comment_char
- id: in_separator
  doc: a symbol separating columns in the specified plain text file
  type: File?
  inputBinding:
    prefix: --separator
- id: in_chr
  doc: a name of a file containing NCBI chromosome accession numbers
  type: File?
  inputBinding:
    prefix: --chr
- id: in_unloc
  doc: a name of a file containing NCBI accession numbers of unlocalized fragments
  type: File?
  inputBinding:
    prefix: --unloc
- id: in_un_pl
  doc: a name of a file containing NCBI accession numbers of unplaced fragments
  type: File?
  inputBinding:
    prefix: --unpl
- id: in_prefix
  doc: a prefix to be added to sequence names
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_prefix_chr
  doc: a prefix to be added to chromosome names
  type: string?
  inputBinding:
    prefix: --prefix_chr
- id: in_prefix_unloc
  doc: a prefix to be added to unlocalized fragment names
  type: string?
  inputBinding:
    prefix: --prefix_unloc
- id: in_prefix_un_pl
  doc: a prefix to be added to unplaced fragment names
  type: string?
  inputBinding:
    prefix: --prefix_unpl
- id: in_suffix
  doc: a suffix to be added to sequence names
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_suffix_chr
  doc: a suffix to be added to chromosome names
  type: string?
  inputBinding:
    prefix: --suffix_chr
- id: in_suffix_unloc
  doc: a suffix to be added to unlocalized fragment names
  type: string?
  inputBinding:
    prefix: --suffix_unloc
- id: in_suffix_un_pl
  doc: a suffix to be added to unplaced fragment names
  type: string?
  inputBinding:
    prefix: --suffix_unpl
- id: in_revert
  doc: perform reverse renaming, that is, change original and new names in the renaming
    table
  type: boolean?
  inputBinding:
    prefix: --revert
- id: in_no_version
  doc: remove a sequence version from an accession number
  type: boolean?
  inputBinding:
    prefix: --no_version
- id: in_no_description
  doc: remove descriptions from FASTA sequence headers
  type: boolean?
  inputBinding:
    prefix: --no_description
- id: in_output_table
  doc: write the renaming table to the specified file
  type: File?
  inputBinding:
    prefix: --output_table
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_var_20
  doc: '{refseq_full,genbank_full,refseq_gi,genbank_gi,refseq,genbank,chr_refseq,chr_genbank}'
  type: string
  inputBinding:
    position: 0
- id: in_var_21
  doc: '{refseq_full,genbank_full,refseq_gi,genbank_gi,refseq,genbank,chr_refseq,chr_genbank,ucsc}'
  type: string
  inputBinding:
    position: 1
- id: in_file_change_names
  doc: a file to change sequence names in
  type: string
  inputBinding:
    position: 0
- id: in_output_file_renamed
  doc: an output file for renamed sequences
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioformats
- ncbirenameseq
