class: CommandLineTool
id: statal.cwl
inputs:
- id: in
  doc: Input file in several formats (clustal, fasta, nexus, phylip, etc).
  type: string
  inputBinding:
    prefix: -in
- id: compare_set
  doc: Input list of paths for the alignments to compare.
  type: string
  inputBinding:
    prefix: -compareset
- id: force_select
  doc: Force selection of a given file as reference for being compare with others.
  type: string
  inputBinding:
    prefix: -forceselect
- id: matrix
  doc: 'Input file for user-defined similarity matrix (default: Blosum62).'
  type: string
  inputBinding:
    prefix: -matrix
- id: sgc
  doc: Print gap score per column from input alignment.
  type: boolean
  inputBinding:
    prefix: -sgc
- id: sgt
  doc: Print accumulated gap scores distribution from input alignment.
  type: boolean
  inputBinding:
    prefix: -sgt
- id: ssc
  doc: Print similarity score per column from input alignment.
  type: boolean
  inputBinding:
    prefix: -ssc
- id: sst
  doc: Print accumulated similarity scores distribution for input alignment.
  type: boolean
  inputBinding:
    prefix: -sst
- id: sfc
  doc: Print sum-of-pairs score per column for the selected alignment
  type: boolean
  inputBinding:
    prefix: -sfc
- id: sft
  doc: Print accumulated sum-of-pairs scores distribution for the selected alignment
  type: boolean
  inputBinding:
    prefix: -sft
- id: sident
  doc: Print identity scores for sequences in the alignemnt.
  type: boolean
  inputBinding:
    prefix: -sident
- id: scol_ident_t
  doc: Print general descriptive statistics for column identity scores from input
    alignemnt.
  type: boolean
  inputBinding:
    prefix: -scolidentt
- id: w
  doc: (half) Window size, score of position i is the average of the window (i - n)
    to (i + n).
  type: string
  inputBinding:
    prefix: -w
- id: gw
  doc: (half) Window size only applies to statistics based on Gaps.
  type: string
  inputBinding:
    prefix: -gw
- id: sw
  doc: (half) Window size only applies to statistics based on Similarity.
  type: string
  inputBinding:
    prefix: -sw
- id: cw
  doc: (half) Window size only applies to statistics based on Consistency.
  type: string
  inputBinding:
    prefix: -cw
outputs: []
cwlVersion: v1.1
baseCommand:
- statal
