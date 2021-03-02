class: CommandLineTool
id: statal.cwl
inputs:
- id: in_in
  doc: Input file in several formats (clustal, fasta, nexus, phylip, etc).
  type: File?
  inputBinding:
    prefix: -in
- id: in_compare_set
  doc: Input list of paths for the alignments to compare.
  type: File?
  inputBinding:
    prefix: -compareset
- id: in_force_select
  doc: Force selection of a given file as reference for being compare with others.
  type: File?
  inputBinding:
    prefix: -forceselect
- id: in_matrix
  doc: 'Input file for user-defined similarity matrix (default: Blosum62).'
  type: File?
  inputBinding:
    prefix: -matrix
- id: in_sgc
  doc: Print gap score per column from input alignment.
  type: boolean?
  inputBinding:
    prefix: -sgc
- id: in_sgt
  doc: Print accumulated gap scores distribution from input alignment.
  type: boolean?
  inputBinding:
    prefix: -sgt
- id: in_ssc
  doc: Print similarity score per column from input alignment.
  type: boolean?
  inputBinding:
    prefix: -ssc
- id: in_sst
  doc: Print accumulated similarity scores distribution for input alignment.
  type: boolean?
  inputBinding:
    prefix: -sst
- id: in_sfc
  doc: Print sum-of-pairs score per column for the selected alignment
  type: boolean?
  inputBinding:
    prefix: -sfc
- id: in_sft
  doc: Print accumulated sum-of-pairs scores distribution for the selected alignment
  type: boolean?
  inputBinding:
    prefix: -sft
- id: in_sident
  doc: Print identity scores for sequences in the alignemnt.
  type: boolean?
  inputBinding:
    prefix: -sident
- id: in_scol_ident_t
  doc: Print general descriptive statistics for column identity scores from input
    alignemnt.
  type: boolean?
  inputBinding:
    prefix: -scolidentt
- id: in_half_window_size
  doc: (half) Window size, score of position i is the average of the window (i - n)
    to (i + n).
  type: long?
  inputBinding:
    prefix: -w
- id: in_gw
  doc: (half) Window size only applies to statistics based on Gaps.
  type: long?
  inputBinding:
    prefix: -gw
- id: in_sw
  doc: (half) Window size only applies to statistics based on Similarity.
  type: long?
  inputBinding:
    prefix: -sw
- id: in_cw
  doc: (half) Window size only applies to statistics based on Consistency.
  type: long?
  inputBinding:
    prefix: -cw
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- statal
