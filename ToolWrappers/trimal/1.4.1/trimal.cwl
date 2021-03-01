class: CommandLineTool
id: trimal.cwl
inputs:
- id: in_in
  doc: Input file in several formats (clustal, fasta, NBRF/PIR, nexus, phylip3.2,
    phylip).
  type: File?
  inputBinding:
    prefix: -in
- id: in_compare_set
  doc: Input list of paths for the files containing the alignments to compare.
  type: File?
  inputBinding:
    prefix: -compareset
- id: in_force_select
  doc: Force selection of the given input file in the files comparison method.
  type: File?
  inputBinding:
    prefix: -forceselect
- id: in_back_trans
  doc: Use a Coding Sequences file to get a backtranslation for a given AA alignment
  type: File?
  inputBinding:
    prefix: -backtrans
- id: in_ignore_stop_codon
  doc: Ignore stop codons in the input coding sequences
  type: boolean?
  inputBinding:
    prefix: -ignorestopcodon
- id: in_split_by_stop_codon
  doc: Split input coding sequences up to first stop codon appearance
  type: boolean?
  inputBinding:
    prefix: -splitbystopcodon
- id: in_matrix
  doc: Input file for user-defined similarity matrix (default is Blosum62).
  type: File?
  inputBinding:
    prefix: -matrix
- id: in_out
  doc: Output alignment in the same input format (default stdout). (default input
    format)
  type: File?
  inputBinding:
    prefix: -out
- id: in_html_out
  doc: Get a summary of trimal's work in an HTML file.
  type: File?
  inputBinding:
    prefix: -htmlout
- id: in_keep_header
  doc: "Keep original sequence header including non-alphanumeric characters.\nOnly\
    \ available for input FASTA format files. (future versions will extend this feature)"
  type: boolean?
  inputBinding:
    prefix: -keepheader
- id: in_nbr_f
  doc: Output file in NBRF/PIR format
  type: File?
  inputBinding:
    prefix: -nbrf
- id: in_mega
  doc: Output file in MEGA format
  type: File?
  inputBinding:
    prefix: -mega
- id: in_nexus
  doc: Output file in NEXUS format
  type: File?
  inputBinding:
    prefix: -nexus
- id: in_clustal
  doc: Output file in CLUSTAL format
  type: File?
  inputBinding:
    prefix: -clustal
- id: in_fast_a
  doc: Output file in FASTA format
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_fast_a_m_one_zero
  doc: Output file in FASTA format. Sequences name length up to 10 characters.
  type: boolean?
  inputBinding:
    prefix: -fasta_m10
- id: in_phylip
  doc: Output file in PHYLIP/PHYLIP4 format
  type: File?
  inputBinding:
    prefix: -phylip
- id: in_phylip_m_one_zero
  doc: Output file in PHYLIP/PHYLIP4 format. Sequences name length up to 10 characters.
  type: boolean?
  inputBinding:
    prefix: -phylip_m10
- id: in_phylip_paml
  doc: Output file in PHYLIP format compatible with PAML
  type: File?
  inputBinding:
    prefix: -phylip_paml
- id: in_phylip_paml_m_one_zero
  doc: Output file in PHYLIP format compatible with PAML. Sequences name length up
    to 10 characters.
  type: boolean?
  inputBinding:
    prefix: -phylip_paml_m10
- id: in_phylip_three_dot_two
  doc: Output file in PHYLIP3.2 format
  type: File?
  inputBinding:
    prefix: -phylip3.2
- id: in_phylip_three_dot_two_m_one_zero
  doc: Output file in PHYLIP3.2 format. Sequences name length up to 10 characters.
  type: boolean?
  inputBinding:
    prefix: -phylip3.2_m10
- id: in_complementary
  doc: Get the complementary alignment.
  type: boolean?
  inputBinding:
    prefix: -complementary
- id: in_col_numbering
  doc: Get the relationship between the columns in the old and new alignment.
  type: boolean?
  inputBinding:
    prefix: -colnumbering
- id: in_select_cols
  doc: 'Selection of columns to be removed from the alignment. Range: [0 - (Number
    of Columns - 1)]. (see User Guide).'
  type: string?
  inputBinding:
    prefix: -selectcols
- id: in_select_seqs
  doc: 'Selection of sequences to be removed from the alignment. Range: [0 - (Number
    of Sequences - 1)]. (see User Guide).'
  type: string?
  inputBinding:
    prefix: -selectseqs
- id: in_gap_threshold
  doc: '1 - (fraction of sequences with a gap allowed). Range: [0 - 1]'
  type: long?
  inputBinding:
    prefix: -gapthreshold
- id: in_sim_threshold
  doc: 'Minimum average similarity allowed. Range: [0 - 1]'
  type: long?
  inputBinding:
    prefix: -simthreshold
- id: in_con_threshold
  doc: 'Minimum consistency value allowed.Range: [0 - 1]'
  type: long?
  inputBinding:
    prefix: -conthreshold
- id: in_cons
  doc: 'Minimum percentage of the positions in the original alignment to conserve.
    Range: [0 - 100]'
  type: long?
  inputBinding:
    prefix: -cons
- id: in_nogaps
  doc: Remove all positions with gaps in the alignment.
  type: boolean?
  inputBinding:
    prefix: -nogaps
- id: in_no_all_gaps
  doc: Remove columns composed only by gaps.
  type: boolean?
  inputBinding:
    prefix: -noallgaps
- id: in_keep_seqs
  doc: Keep sequences even if they are composed only by gaps.
  type: boolean?
  inputBinding:
    prefix: -keepseqs
- id: in_gapp_you_t
  doc: Use automated selection on "gappyout" mode. This method only uses information
    based on gaps' distribution. (see User Guide).
  type: boolean?
  inputBinding:
    prefix: -gappyout
- id: in_strict
  doc: Use automated selection on "strict" mode. (see User Guide).
  type: boolean?
  inputBinding:
    prefix: -strict
- id: in_strict_plus
  doc: "Use automated selection on \"strictplus\" mode. (see User Guide).\n(Optimized\
    \ for Neighbour Joining phylogenetic tree reconstruction)."
  type: boolean?
  inputBinding:
    prefix: -strictplus
- id: in_automated_one
  doc: Use a heuristic selection of the automatic method based on similarity statistics.
    (see User Guide). (Optimized for Maximum Likelihood phylogenetic tree reconstruction).
  type: boolean?
  inputBinding:
    prefix: -automated1
- id: in_terminal_only
  doc: "Only columns out of internal boundaries (first and last column without gaps)\
    \ are\ncandidated to be trimmed depending on the applied method"
  type: boolean?
  inputBinding:
    prefix: -terminalonly
- id: in_block
  doc: Minimum column block size to be kept in the trimmed alignment. Available with
    manual and automatic (gappyout) methods
  type: long?
  inputBinding:
    prefix: -block
- id: in_res_overlap
  doc: 'Minimum overlap of a positions with other positions in the column to be considered
    a "good position". Range: [0 - 1]. (see User Guide).'
  type: boolean?
  inputBinding:
    prefix: -resoverlap
- id: in_seq_overlap
  doc: 'Minimum percentage of "good positions" that a sequence must have in order
    to be conserved. Range: [0 - 100](see User Guide).'
  type: boolean?
  inputBinding:
    prefix: -seqoverlap
- id: in_clusters
  doc: 'Get the most Nth representatives sequences from a given alignment. Range:
    [1 - (Number of sequences)]'
  type: long?
  inputBinding:
    prefix: -clusters
- id: in_max_identity
  doc: 'Get the representatives sequences for a given identity threshold. Range: [0
    - 1].'
  type: long?
  inputBinding:
    prefix: -maxidentity
- id: in_half_window_size
  doc: (half) Window size, score of position i is the average of the window (i - n)
    to (i + n).
  type: long?
  inputBinding:
    prefix: -w
- id: in_gw
  doc: (half) Window size only applies to statistics/methods based on Gaps.
  type: long?
  inputBinding:
    prefix: -gw
- id: in_sw
  doc: (half) Window size only applies to statistics/methods based on Similarity.
  type: long?
  inputBinding:
    prefix: -sw
- id: in_cw
  doc: (half) Window size only applies to statistics/methods based on Consistency.
  type: long?
  inputBinding:
    prefix: -cw
- id: in_sgc
  doc: Print gap scores for each column in the input alignment.
  type: boolean?
  inputBinding:
    prefix: -sgc
- id: in_sgt
  doc: Print accumulated gap scores for the input alignment.
  type: boolean?
  inputBinding:
    prefix: -sgt
- id: in_ssc
  doc: Print similarity scores for each column in the input alignment.
  type: boolean?
  inputBinding:
    prefix: -ssc
- id: in_sst
  doc: Print accumulated similarity scores for the input alignment.
  type: boolean?
  inputBinding:
    prefix: -sst
- id: in_sfc
  doc: Print sum-of-pairs scores for each column from the selected alignment
  type: boolean?
  inputBinding:
    prefix: -sfc
- id: in_sft
  doc: Print accumulated sum-of-pairs scores for the selected alignment
  type: boolean?
  inputBinding:
    prefix: -sft
- id: in_sident
  doc: Print identity scores for all sequences in the input alignment. (see User Guide).
  type: boolean?
  inputBinding:
    prefix: -sident
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output alignment in the same input format (default stdout). (default input
    format)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_html_out
  doc: Get a summary of trimal's work in an HTML file.
  type: File?
  outputBinding:
    glob: $(inputs.in_html_out)
- id: out_nbr_f
  doc: Output file in NBRF/PIR format
  type: File?
  outputBinding:
    glob: $(inputs.in_nbr_f)
- id: out_mega
  doc: Output file in MEGA format
  type: File?
  outputBinding:
    glob: $(inputs.in_mega)
- id: out_nexus
  doc: Output file in NEXUS format
  type: File?
  outputBinding:
    glob: $(inputs.in_nexus)
- id: out_clustal
  doc: Output file in CLUSTAL format
  type: File?
  outputBinding:
    glob: $(inputs.in_clustal)
- id: out_fast_a
  doc: Output file in FASTA format
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_a)
- id: out_phylip
  doc: Output file in PHYLIP/PHYLIP4 format
  type: File?
  outputBinding:
    glob: $(inputs.in_phylip)
- id: out_phylip_paml
  doc: Output file in PHYLIP format compatible with PAML
  type: File?
  outputBinding:
    glob: $(inputs.in_phylip_paml)
- id: out_phylip_three_dot_two
  doc: Output file in PHYLIP3.2 format
  type: File?
  outputBinding:
    glob: $(inputs.in_phylip_three_dot_two)
hints: []
cwlVersion: v1.1
baseCommand:
- trimal
