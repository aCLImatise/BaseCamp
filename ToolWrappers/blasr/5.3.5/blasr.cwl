class: CommandLineTool
id: blasr.cwl
inputs:
- id: in_sa
  doc: "Use the suffix array 'sa' for detecting matches\nbetween the reads and the\
    \ reference.  The suffix\narray has been prepared by the sawriter program."
  type: File?
  inputBinding:
    prefix: --sa
- id: in_ctab
  doc: "A table of tuple counts used to estimate match significance.  This is\nby\
    \ the program 'printTupleCountTable'.  While it is quick to generate on\nthe fly,\
    \ if there are many invocations of blasr, it is useful to\nprecompute the ctab."
  type: string?
  inputBinding:
    prefix: --ctab
- id: in_region_table
  doc: "(DEPRECATED)\nRead in a read-region table in HDF format for masking portions\
    \ of reads.\nThis may be a single table if there is just one input file,\nor a\
    \ fofn.  When a region table is specified, any region table inside\nthe reads.plx.h5\
    \ or reads.bax.h5 files are ignored."
  type: File?
  inputBinding:
    prefix: --regionTable
- id: in_no_split_sub_reads
  doc: "Do not split subreads at adapters. This is typically only\nuseful when the\
    \ genome in an unrolled version of a known template, and\ncontains template-adapter-reverse_template\
    \ sequence.\nFor BAM input it reconstitutes full ZMW reads."
  type: boolean?
  inputBinding:
    prefix: --noSplitSubreads
- id: in_polymerase
  doc: "Instead of reconstituting ZMW reads,\nthis option reconstitutes polymerase\
    \ reads, omitting LQ regions.\nPolymerase reads are aligned, if at least one subread\
    \ is present."
  type: boolean?
  inputBinding:
    prefix: --polymerase
- id: in_use_ccs
  doc: "Align the circular consensus sequence (ccs), then report alignments\nof the\
    \ ccs subreads to the window that the ccs was mapped to.  Only\nalignments of\
    \ the subreads are reported."
  type: boolean?
  inputBinding:
    prefix: --useccs
- id: in_use_ccs_all
  doc: "Similar to -useccs, except all subreads are aligned, rather than just\nthe\
    \ subreads used to call the ccs.  This will include reads that only\ncover part\
    \ of the template."
  type: boolean?
  inputBinding:
    prefix: --useccsall
- id: in_use_ccs_de_novo
  doc: "Align the circular consensus, and report only the alignment of the ccs\nsequence."
  type: boolean?
  inputBinding:
    prefix: --useccsdenovo
- id: in_ignore_regions
  doc: "(false)\nIgnore any information in the region table."
  type: boolean?
  inputBinding:
    prefix: --ignoreRegions
- id: in_ignore_hq_regions
  doc: (false)Ignore any hq regions in the region table.
  type: boolean?
  inputBinding:
    prefix: --ignoreHQRegions
- id: in_best_n
  doc: "(10)\nReport the top 'n' alignments."
  type: long?
  inputBinding:
    prefix: --bestn
- id: in_hit_policy
  doc: "(all) Specify a policy to treat multiple hits from [all, allbest, random,\
    \ randombest, leftmost]\nall       : report all alignments.\nallbest   : report\
    \ all equally top scoring alignments.\nrandom    : report a random alignment.\n\
    randombest: report a random alignment from multiple equally top scoring alignments.\n\
    leftmost  : report an alignment which has the best alignmentscore and has the\
    \ smallest mapping coordinate in any reference."
  type: boolean?
  inputBinding:
    prefix: --hitPolicy
- id: in_place_repeats_randomly
  doc: "(false)\nDEPRECATED! If true, equivalent to --hitPolicy randombest."
  type: boolean?
  inputBinding:
    prefix: --placeRepeatsRandomly
- id: in_place_gap_consistently
  doc: "(false)\nPlace gaps consistently in alignments of a read as alignments\nof\
    \ its reverse complementary sequence."
  type: boolean?
  inputBinding:
    prefix: --placeGapConsistently
- id: in_random_seed
  doc: "(0)\nSeed for random number generator. By default (0), use current time as\
    \ seed."
  type: boolean?
  inputBinding:
    prefix: --randomSeed
- id: in_no_sort_refined_alignments
  doc: "(false)\nOnce candidate alignments are generated and scored via sparse dynamic\n\
    programming, they are rescored using local alignment that accounts\nfor different\
    \ error profiles.\nResorting based on the local alignment may change the order\
    \ the hits are returned."
  type: boolean?
  inputBinding:
    prefix: --noSortRefinedAlignments
- id: in_allow_adjacent_indels
  doc: "When specified, adjacent insertion or deletions are allowed. Otherwise, adjacent\n\
    insertion and deletions are merged into one operation.  Using quality values\n\
    to guide pairwise alignments may dictate that the higher probability alignment\n\
    contains adjacent insertions or deletions.  Current tools such as GATK do not\
    \ permit\nthis and so they are not reported by default."
  type: boolean?
  inputBinding:
    prefix: --allowAdjacentIndels
- id: in_out
  doc: "(terminal)\nWrite output to 'out'."
  type: string?
  inputBinding:
    prefix: --out
- id: in_bam
  doc: "Write output in PacBio BAM format. This is the preferred output format.\n\
    Input query reads must be in PacBio BAM format."
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_sam
  doc: "Write output in SAM format. Starting from version 5.2 is no longer supported\n\
    Use --bam, then translate from .bam to .sam"
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_printing_sam_modify
  doc: "If not printing SAM, modify the output of the alignment.\nt=0 Print blast\
    \ like output with |'s connecting matched nucleotides.\n1 Print only a summary:\
    \ score and pos.\n2 Print in Compare.xml format.\n3 Print in vulgar format (DEPRECATED).\n\
    4 Print a longer tabular version of the alignment.\n5 Print in a machine-parsable\
    \ format that is read by compareSequences.py."
  type: long?
  inputBinding:
    prefix: -m
- id: in_header
  doc: Print a header as the first line of the output file describing the contents
    of each column.
  type: File?
  inputBinding:
    prefix: --header
- id: in_title_table
  doc: "(NULL)\nConstruct a table of reference sequence titles.  The reference sequences\
    \ are\nenumerated by row, 0,1,...  The reference index is printed in alignment\
    \ results\nrather than the full reference name.  This makes output concise, particularly\
    \ when\nvery verbose titles exist in reference names."
  type: long?
  inputBinding:
    prefix: --titleTable
- id: in_unaligned
  doc: Output reads that are not aligned to 'file'
  type: File?
  inputBinding:
    prefix: --unaligned
- id: in_no_print_unaligned_seqs
  doc: Must be used together with -unaligned, print unaligned read names only.
  type: boolean?
  inputBinding:
    prefix: --noPrintUnalignedSeqs
- id: in_clipping
  doc: "[none|hard|subread|soft] (none)\nUse no/hard/subread/soft clipping, ONLY for\
    \ SAM/BAM output."
  type: boolean?
  inputBinding:
    prefix: --clipping
- id: in_prints_am_qv
  doc: "(false)\nPrint quality values to SAM output."
  type: boolean?
  inputBinding:
    prefix: --printSAMQV
- id: in_min_match
  doc: "(12)\nMinimum seed length.  Higher minMatch will speed up alignment,\nbut\
    \ decrease sensitivity."
  type: long?
  inputBinding:
    prefix: --minMatch
- id: in_max_match
  doc: "(inf)\nStop mapping a read to the genome when the lcp length reaches l.\n\
    This is useful when the query is part of the reference, for example when\nconstructing\
    \ pairwise alignments for de novo assembly."
  type: long?
  inputBinding:
    prefix: --maxMatch
- id: in_max_lcp_length
  doc: "(inf)\nThe same as -maxMatch."
  type: string?
  inputBinding:
    prefix: --maxLCPLength
- id: in_max_anchors_per_position
  doc: "(10000)\nDo not add anchors from a position if it matches to more than 'm'\
    \ locations in the target."
  type: long?
  inputBinding:
    prefix: --maxAnchorsPerPosition
- id: in_advance_exact_matches
  doc: "(0)\nAnother trick for speeding up alignments with match - E fewer anchors.\
    \  Rather than\nfinding anchors between the read and the genome at every position\
    \ in the read,\nwhen an anchor is found at position i in a read of length L, the\
    \ next position\nin a read to find an anchor is at i+L-E.\nUse this when alignining\
    \ already assembled contigs."
  type: long?
  inputBinding:
    prefix: --advanceExactMatches
- id: in_n_candidates
  doc: "(10)\nKeep up to 'n' candidates for the best alignment.  A large value of\
    \ n will slow mapping\nbecause the slower dynamic programming steps are applied\
    \ to more clusters of anchors\nwhich can be a rate limiting step when reads are\
    \ very long."
  type: long?
  inputBinding:
    prefix: --nCandidates
- id: in_concordant
  doc: "(false)\nMap all subreads of a zmw (hole) to where the longest full pass subread\
    \ of the zmw\naligned to. This requires to use the region table and hq regions.\n\
    This option only works when reads are in base or pulse h5 format."
  type: boolean?
  inputBinding:
    prefix: --concordant
- id: in_fast_max_interval
  doc: "(false)\nFast search maximum increasing intervals as alignment candidates.\
    \ The search\nis not as exhaustive as the default, but is much faster."
  type: boolean?
  inputBinding:
    prefix: --fastMaxInterval
- id: in_aggressive_interval_cut
  doc: "(false)\nAgreesively filter out non-promising alignment candidates, if there\n\
    exists at least one promising candidate. If this option is turned on,\nBlasr is\
    \ likely to ignore short alignments of ALU elements."
  type: boolean?
  inputBinding:
    prefix: --aggressiveIntervalCut
- id: in_fast_sdp
  doc: "(false)\nUse a fast heuristic algorithm to speed up sparse dynamic programming."
  type: boolean?
  inputBinding:
    prefix: --fastSDP
- id: in_refine_concordant_alignments
  doc: "(false)\nRefine concordant alignments. It slightly increases alignment accuracy\
    \ at cost of time."
  type: boolean?
  inputBinding:
    prefix: --refineConcordantAlignments
- id: in_sdp_tuple_size
  doc: "(11)\nUse matches of length K to speed dynamic programming alignments.  This\
    \ controls\naccuracy of assigning gaps in pairwise alignments once a mapping has\
    \ been found,\nrather than mapping sensitivity itself."
  type: long?
  inputBinding:
    prefix: --sdpTupleSize
- id: in_score_matrix
  doc: "\"score matrix string\"\nSpecify an alternative score matrix for scoring fasta\
    \ reads.  The matrix is\nin the format\nACGTN\nA abcde\nC fghij\nG klmno\nT pqrst\n\
    N uvwxy . The values a...y should be input as a quoted space separated\nstring:\
    \ \"a b c ... y\". Lower scores are better, so matches should be less\nthan mismatches\
    \ e.g. a,g,m,s = -5 (match), mismatch = 6."
  type: boolean?
  inputBinding:
    prefix: --scoreMatrix
- id: in_affine_open
  doc: "(10)\nSet the penalty for opening an affine alignment."
  type: long?
  inputBinding:
    prefix: --affineOpen
- id: in_affine_extend
  doc: "(0)\nChange affine (extension) gap penalty. Lower value allows more gaps."
  type: long?
  inputBinding:
    prefix: --affineExtend
- id: in_use_quality
  doc: "(false)\nUse substitution/insertion/deletion/merge quality values to score\
    \ gap and\nmismatch penalties in pairwise alignments.  Because the insertion and\
    \ deletion\nrates are much higher than substitution, this will make many alignments\n\
    favor an insertion/deletion over a substitution.  Naive consensus calling methods\n\
    will then often miss substitution polymorphisms. This option should be\nused when\
    \ calling consensus using the Quiver method.  Furthermore, when\nnot using quality\
    \ values to score alignments, there will be a lower consensus\naccuracy in homolymer\
    \ regions."
  type: boolean?
  inputBinding:
    prefix: --useQuality
- id: in_affine_align
  doc: "(false)\nRefine alignment using affine guided align."
  type: boolean?
  inputBinding:
    prefix: --affineAlign
- id: in_min_read_length
  doc: "(50)\nSkip reads that have a full length less than l. Subreads may be shorter."
  type: long?
  inputBinding:
    prefix: --minReadLength
- id: in_min_sub_read_length
  doc: "(0)\nDo not align subreads of length less than l."
  type: long?
  inputBinding:
    prefix: --minSubreadLength
- id: in_min_raw_sub_read_score
  doc: "(0)\nDo not align subreads whose quality score in region table is less than\
    \ m (quality scores should be in range [0, 1000])."
  type: long?
  inputBinding:
    prefix: --minRawSubreadScore
- id: in_max_score
  doc: "(-200)\nMaximum score to output (high is bad, negative good)."
  type: long?
  inputBinding:
    prefix: --maxScore
- id: in_min_alnlength
  doc: (0) Report alignments only if their lengths are greater than minAlnLength.
  type: boolean?
  inputBinding:
    prefix: --minAlnLength
- id: in_min_pct_similarity
  doc: (0) Report alignments only if their percentage similarity is greater than minPctSimilarity.
  type: boolean?
  inputBinding:
    prefix: --minPctSimilarity
- id: in_min_pct_accuracy
  doc: (0) Report alignments only if their percentage accuracy is greater than minAccuracy.
  type: boolean?
  inputBinding:
    prefix: --minPctAccuracy
- id: in_nproc
  doc: "(1)\nAlign using N processes.  All large data structures such as the suffix\
    \ array and\ntuple count table are shared."
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_start
  doc: "(0)\nIndex of the first read to begin aligning. This is useful when multiple\
    \ instances\nare running on the same data, for example when on a multi-rack cluster."
  type: long?
  inputBinding:
    prefix: --start
- id: in_stride
  doc: "(1)\nAlign one read every 'S' reads."
  type: long?
  inputBinding:
    prefix: --stride
- id: in_subsample
  doc: "(0)\nProportion of reads to randomly subsample (expressed as a decimal) and\
    \ align."
  type: boolean?
  inputBinding:
    prefix: --subsample
- id: in_hole_numbers
  doc: "When specified, only align reads whose ZMW hole numbers are in LIST.\nLIST\
    \ is a comma-delimited string of ranges, such as '1,2,3,10-13'.\nThis option only\
    \ works when reads are in bam, bax.h5 or plx.h5 format."
  type: string?
  inputBinding:
    prefix: --holeNumbers
- id: in_reads_dot_bam
  doc: "is a PacBio BAM file of reads.\nThis is the preferred input to blasr because\
    \ rich quality\nvalue (insertion,deletion, and substitution quality values) information\
    \ is\nmaintained.  The extra quality information improves variant detection and\
    \ mapping\nspeed."
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_fof_n
  doc: File of file names accepted.
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot
  doc: Reads produced by spurrious reads from empty ZMWs have a high
  type: string
  inputBinding:
    position: 0
- id: in_specified_dot
  doc: Although reads may be input in FASTA format, the recommended input is
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_header
  doc: Print a header as the first line of the output file describing the contents
    of each column.
  type: File?
  outputBinding:
    glob: $(inputs.in_header)
- id: out_unaligned
  doc: Output reads that are not aligned to 'file'
  type: File?
  outputBinding:
    glob: $(inputs.in_unaligned)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blasr:5.3.5--0
cwlVersion: v1.1
baseCommand:
- blasr
