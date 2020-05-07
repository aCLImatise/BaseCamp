class: CommandLineTool
id: trimal.cwl
inputs:
- id: in
  doc: Input file in several formats (clustal, fasta, NBRF/PIR, nexus, phylip3.2,
    phylip).
  type: string
  inputBinding:
    prefix: -in
- id: compare_set
  doc: Input list of paths for the files containing the alignments to compare.
  type: string
  inputBinding:
    prefix: -compareset
- id: force_select
  doc: Force selection of the given input file in the files comparison method.
  type: string
  inputBinding:
    prefix: -forceselect
- id: back_trans
  doc: Use a Coding Sequences file to get a backtranslation for a given AA alignment
  type: string
  inputBinding:
    prefix: -backtrans
- id: ignore_stop_codon
  doc: Ignore stop codons in the input coding sequences
  type: boolean
  inputBinding:
    prefix: -ignorestopcodon
- id: split_by_stop_codon
  doc: Split input coding sequences up to first stop codon appearance
  type: boolean
  inputBinding:
    prefix: -splitbystopcodon
- id: matrix
  doc: Input file for user-defined similarity matrix (default is Blosum62).
  type: string
  inputBinding:
    prefix: -matrix
- id: out
  doc: Output alignment in the same input format (default stdout). (default input
    format)
  type: string
  inputBinding:
    prefix: -out
- id: html_out
  doc: Get a summary of trimal's work in an HTML file.
  type: string
  inputBinding:
    prefix: -htmlout
- id: keep_header
  doc: Keep original sequence header including non-alphanumeric characters. Only available
    for input FASTA format files. (future versions will extend this feature)
  type: boolean
  inputBinding:
    prefix: -keepheader
- id: nbr_f
  doc: Output file in NBRF/PIR format
  type: boolean
  inputBinding:
    prefix: -nbrf
- id: mega
  doc: Output file in MEGA format
  type: boolean
  inputBinding:
    prefix: -mega
- id: nexus
  doc: Output file in NEXUS format
  type: boolean
  inputBinding:
    prefix: -nexus
- id: clustal
  doc: Output file in CLUSTAL format
  type: boolean
  inputBinding:
    prefix: -clustal
- id: fast_a
  doc: Output file in FASTA format
  type: boolean
  inputBinding:
    prefix: -fasta
- id: fast_a_m10
  doc: Output file in FASTA format. Sequences name length up to 10 characters.
  type: boolean
  inputBinding:
    prefix: -fasta_m10
- id: phylip
  doc: Output file in PHYLIP/PHYLIP4 format
  type: boolean
  inputBinding:
    prefix: -phylip
- id: phylip_m10
  doc: Output file in PHYLIP/PHYLIP4 format. Sequences name length up to 10 characters.
  type: boolean
  inputBinding:
    prefix: -phylip_m10
- id: phylip_paml
  doc: Output file in PHYLIP format compatible with PAML
  type: boolean
  inputBinding:
    prefix: -phylip_paml
- id: phylip_paml_m10
  doc: Output file in PHYLIP format compatible with PAML. Sequences name length up
    to 10 characters.
  type: boolean
  inputBinding:
    prefix: -phylip_paml_m10
- id: phylip3
  doc: .2               Output file in PHYLIP3.2 format
  type: boolean
  inputBinding:
    prefix: -phylip3
- id: phylip3
  doc: .2_m10           Output file in PHYLIP3.2 format. Sequences name length up
    to 10 characters.
  type: boolean
  inputBinding:
    prefix: -phylip3
- id: complementary
  doc: Get the complementary alignment.
  type: boolean
  inputBinding:
    prefix: -complementary
- id: col_numbering
  doc: Get the relationship between the columns in the old and new alignment.
  type: boolean
  inputBinding:
    prefix: -colnumbering
- id: select_cols
  doc: 'Selection of columns to be removed from the alignment. Range: [0 - (Number
    of Columns - 1)]. (see User Guide).'
  type: string
  inputBinding:
    prefix: -selectcols
- id: select_seqs
  doc: 'Selection of sequences to be removed from the alignment. Range: [0 - (Number
    of Sequences - 1)]. (see User Guide).'
  type: string
  inputBinding:
    prefix: -selectseqs
- id: gap_threshold
  doc: '1 - (fraction of sequences with a gap allowed). Range: [0 - 1]'
  type: string
  inputBinding:
    prefix: -gapthreshold
- id: sim_threshold
  doc: 'Minimum average similarity allowed. Range: [0 - 1]'
  type: string
  inputBinding:
    prefix: -simthreshold
- id: con_threshold
  doc: 'Minimum consistency value allowed.Range: [0 - 1]'
  type: string
  inputBinding:
    prefix: -conthreshold
- id: cons
  doc: 'Minimum percentage of the positions in the original alignment to conserve.
    Range: [0 - 100]'
  type: string
  inputBinding:
    prefix: -cons
- id: nogaps
  doc: Remove all positions with gaps in the alignment.
  type: boolean
  inputBinding:
    prefix: -nogaps
- id: no_all_gaps
  doc: Remove columns composed only by gaps.
  type: boolean
  inputBinding:
    prefix: -noallgaps
- id: keep_seqs
  doc: Keep sequences even if they are composed only by gaps.
  type: boolean
  inputBinding:
    prefix: -keepseqs
- id: gapp_you_t
  doc: Use automated selection on "gappyout" mode. This method only uses information
    based on gaps' distribution. (see User Guide).
  type: boolean
  inputBinding:
    prefix: -gappyout
- id: strict
  doc: Use automated selection on "strict" mode. (see User Guide).
  type: boolean
  inputBinding:
    prefix: -strict
- id: strict_plus
  doc: Use automated selection on "strictplus" mode. (see User Guide). (Optimized
    for Neighbour Joining phylogenetic tree reconstruction).
  type: boolean
  inputBinding:
    prefix: -strictplus
- id: automated_1
  doc: Use a heuristic selection of the automatic method based on similarity statistics.
    (see User Guide). (Optimized for Maximum Likelihood phylogenetic tree reconstruction).
  type: boolean
  inputBinding:
    prefix: -automated1
- id: terminal_only
  doc: Only columns out of internal boundaries (first and last column without gaps)
    are  candidated to be trimmed depending on the applied method
  type: boolean
  inputBinding:
    prefix: -terminalonly
- id: block
  doc: Minimum column block size to be kept in the trimmed alignment. Available with
    manual and automatic (gappyout) methods
  type: string
  inputBinding:
    prefix: -block
- id: res_overlap
  doc: 'Minimum overlap of a positions with other positions in the column to be considered
    a "good position". Range: [0 - 1]. (see User Guide).'
  type: boolean
  inputBinding:
    prefix: -resoverlap
- id: seq_overlap
  doc: 'Minimum percentage of "good positions" that a sequence must have in order
    to be conserved. Range: [0 - 100](see User Guide).'
  type: boolean
  inputBinding:
    prefix: -seqoverlap
- id: clusters
  doc: 'Get the most Nth representatives sequences from a given alignment. Range:
    [1 - (Number of sequences)]'
  type: string
  inputBinding:
    prefix: -clusters
- id: max_identity
  doc: 'Get the representatives sequences for a given identity threshold. Range: [0
    - 1].'
  type: string
  inputBinding:
    prefix: -maxidentity
- id: w
  doc: (half) Window size, score of position i is the average of the window (i - n)
    to (i + n).
  type: string
  inputBinding:
    prefix: -w
- id: gw
  doc: (half) Window size only applies to statistics/methods based on Gaps.
  type: string
  inputBinding:
    prefix: -gw
- id: sw
  doc: (half) Window size only applies to statistics/methods based on Similarity.
  type: string
  inputBinding:
    prefix: -sw
- id: cw
  doc: (half) Window size only applies to statistics/methods based on Consistency.
  type: string
  inputBinding:
    prefix: -cw
- id: sgc
  doc: Print gap scores for each column in the input alignment.
  type: boolean
  inputBinding:
    prefix: -sgc
- id: sgt
  doc: Print accumulated gap scores for the input alignment.
  type: boolean
  inputBinding:
    prefix: -sgt
- id: ssc
  doc: Print similarity scores for each column in the input alignment.
  type: boolean
  inputBinding:
    prefix: -ssc
- id: sst
  doc: Print accumulated similarity scores for the input alignment.
  type: boolean
  inputBinding:
    prefix: -sst
- id: sfc
  doc: Print sum-of-pairs scores for each column from the selected alignment
  type: boolean
  inputBinding:
    prefix: -sfc
- id: sft
  doc: Print accumulated sum-of-pairs scores for the selected alignment
  type: boolean
  inputBinding:
    prefix: -sft
- id: sident
  doc: Print identity scores for all sequences in the input alignment. (see User Guide).
  type: boolean
  inputBinding:
    prefix: -sident
outputs: []
cwlVersion: v1.1
baseCommand:
- trimal
