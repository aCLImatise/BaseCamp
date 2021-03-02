version 1.0

task Blasr {
  input {
    File? sa
    String? ctab
    File? region_table
    Boolean? no_split_sub_reads
    Boolean? polymerase
    Boolean? use_ccs
    Boolean? use_ccs_all
    Boolean? use_ccs_de_novo
    Boolean? ignore_regions
    Boolean? ignore_hq_regions
    Int? best_n
    Boolean? hit_policy
    Boolean? place_repeats_randomly
    Boolean? place_gap_consistently
    Boolean? random_seed
    Boolean? no_sort_refined_alignments
    Boolean? allow_adjacent_indels
    String? out
    Boolean? bam
    Boolean? sam
    Int? printing_sam_modify
    File? header
    Int? title_table
    File? unaligned
    Boolean? no_print_unaligned_seqs
    Boolean? clipping
    Boolean? prints_am_qv
    Int? min_match
    Int? max_match
    String? max_lcp_length
    Int? max_anchors_per_position
    Int? advance_exact_matches
    Int? n_candidates
    Boolean? concordant
    Boolean? fast_max_interval
    Boolean? aggressive_interval_cut
    Boolean? fast_sdp
    Boolean? refine_concordant_alignments
    Int? sdp_tuple_size
    Boolean? score_matrix
    Int? affine_open
    Int? affine_extend
    Boolean? use_quality
    Boolean? affine_align
    Int? min_read_length
    Int? min_sub_read_length
    Int? min_raw_sub_read_score
    Int? max_score
    Boolean? min_alnlength
    Boolean? min_pct_similarity
    Boolean? min_pct_accuracy
    Int? nproc
    Int? start
    Int? stride
    Boolean? subsample
    String? hole_numbers
    String reads_dot_bam
    String input_dot_fof_n
    String reads_dot
    String specified_dot
  }
  command <<<
    blasr \
      ~{reads_dot_bam} \
      ~{input_dot_fof_n} \
      ~{reads_dot} \
      ~{specified_dot} \
      ~{if defined(sa) then ("--sa " +  '"' + sa + '"') else ""} \
      ~{if defined(ctab) then ("--ctab " +  '"' + ctab + '"') else ""} \
      ~{if defined(region_table) then ("--regionTable " +  '"' + region_table + '"') else ""} \
      ~{if (no_split_sub_reads) then "--noSplitSubreads" else ""} \
      ~{if (polymerase) then "--polymerase" else ""} \
      ~{if (use_ccs) then "--useccs" else ""} \
      ~{if (use_ccs_all) then "--useccsall" else ""} \
      ~{if (use_ccs_de_novo) then "--useccsdenovo" else ""} \
      ~{if (ignore_regions) then "--ignoreRegions" else ""} \
      ~{if (ignore_hq_regions) then "--ignoreHQRegions" else ""} \
      ~{if defined(best_n) then ("--bestn " +  '"' + best_n + '"') else ""} \
      ~{if (hit_policy) then "--hitPolicy" else ""} \
      ~{if (place_repeats_randomly) then "--placeRepeatsRandomly" else ""} \
      ~{if (place_gap_consistently) then "--placeGapConsistently" else ""} \
      ~{if (random_seed) then "--randomSeed" else ""} \
      ~{if (no_sort_refined_alignments) then "--noSortRefinedAlignments" else ""} \
      ~{if (allow_adjacent_indels) then "--allowAdjacentIndels" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (bam) then "--bam" else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if defined(printing_sam_modify) then ("-m " +  '"' + printing_sam_modify + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(title_table) then ("--titleTable " +  '"' + title_table + '"') else ""} \
      ~{if defined(unaligned) then ("--unaligned " +  '"' + unaligned + '"') else ""} \
      ~{if (no_print_unaligned_seqs) then "--noPrintUnalignedSeqs" else ""} \
      ~{if (clipping) then "--clipping" else ""} \
      ~{if (prints_am_qv) then "--printSAMQV" else ""} \
      ~{if defined(min_match) then ("--minMatch " +  '"' + min_match + '"') else ""} \
      ~{if defined(max_match) then ("--maxMatch " +  '"' + max_match + '"') else ""} \
      ~{if defined(max_lcp_length) then ("--maxLCPLength " +  '"' + max_lcp_length + '"') else ""} \
      ~{if defined(max_anchors_per_position) then ("--maxAnchorsPerPosition " +  '"' + max_anchors_per_position + '"') else ""} \
      ~{if defined(advance_exact_matches) then ("--advanceExactMatches " +  '"' + advance_exact_matches + '"') else ""} \
      ~{if defined(n_candidates) then ("--nCandidates " +  '"' + n_candidates + '"') else ""} \
      ~{if (concordant) then "--concordant" else ""} \
      ~{if (fast_max_interval) then "--fastMaxInterval" else ""} \
      ~{if (aggressive_interval_cut) then "--aggressiveIntervalCut" else ""} \
      ~{if (fast_sdp) then "--fastSDP" else ""} \
      ~{if (refine_concordant_alignments) then "--refineConcordantAlignments" else ""} \
      ~{if defined(sdp_tuple_size) then ("--sdpTupleSize " +  '"' + sdp_tuple_size + '"') else ""} \
      ~{if (score_matrix) then "--scoreMatrix" else ""} \
      ~{if defined(affine_open) then ("--affineOpen " +  '"' + affine_open + '"') else ""} \
      ~{if defined(affine_extend) then ("--affineExtend " +  '"' + affine_extend + '"') else ""} \
      ~{if (use_quality) then "--useQuality" else ""} \
      ~{if (affine_align) then "--affineAlign" else ""} \
      ~{if defined(min_read_length) then ("--minReadLength " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(min_sub_read_length) then ("--minSubreadLength " +  '"' + min_sub_read_length + '"') else ""} \
      ~{if defined(min_raw_sub_read_score) then ("--minRawSubreadScore " +  '"' + min_raw_sub_read_score + '"') else ""} \
      ~{if defined(max_score) then ("--maxScore " +  '"' + max_score + '"') else ""} \
      ~{if (min_alnlength) then "--minAlnLength" else ""} \
      ~{if (min_pct_similarity) then "--minPctSimilarity" else ""} \
      ~{if (min_pct_accuracy) then "--minPctAccuracy" else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if (subsample) then "--subsample" else ""} \
      ~{if defined(hole_numbers) then ("--holeNumbers " +  '"' + hole_numbers + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sa: "Use the suffix array 'sa' for detecting matches\\nbetween the reads and the reference.  The suffix\\narray has been prepared by the sawriter program."
    ctab: "A table of tuple counts used to estimate match significance.  This is\\nby the program 'printTupleCountTable'.  While it is quick to generate on\\nthe fly, if there are many invocations of blasr, it is useful to\\nprecompute the ctab."
    region_table: "(DEPRECATED)\\nRead in a read-region table in HDF format for masking portions of reads.\\nThis may be a single table if there is just one input file,\\nor a fofn.  When a region table is specified, any region table inside\\nthe reads.plx.h5 or reads.bax.h5 files are ignored."
    no_split_sub_reads: "Do not split subreads at adapters. This is typically only\\nuseful when the genome in an unrolled version of a known template, and\\ncontains template-adapter-reverse_template sequence.\\nFor BAM input it reconstitutes full ZMW reads."
    polymerase: "Instead of reconstituting ZMW reads,\\nthis option reconstitutes polymerase reads, omitting LQ regions.\\nPolymerase reads are aligned, if at least one subread is present."
    use_ccs: "Align the circular consensus sequence (ccs), then report alignments\\nof the ccs subreads to the window that the ccs was mapped to.  Only\\nalignments of the subreads are reported."
    use_ccs_all: "Similar to -useccs, except all subreads are aligned, rather than just\\nthe subreads used to call the ccs.  This will include reads that only\\ncover part of the template."
    use_ccs_de_novo: "Align the circular consensus, and report only the alignment of the ccs\\nsequence."
    ignore_regions: "(false)\\nIgnore any information in the region table."
    ignore_hq_regions: "(false)Ignore any hq regions in the region table."
    best_n: "(10)\\nReport the top 'n' alignments."
    hit_policy: "(all) Specify a policy to treat multiple hits from [all, allbest, random, randombest, leftmost]\\nall       : report all alignments.\\nallbest   : report all equally top scoring alignments.\\nrandom    : report a random alignment.\\nrandombest: report a random alignment from multiple equally top scoring alignments.\\nleftmost  : report an alignment which has the best alignmentscore and has the smallest mapping coordinate in any reference."
    place_repeats_randomly: "(false)\\nDEPRECATED! If true, equivalent to --hitPolicy randombest."
    place_gap_consistently: "(false)\\nPlace gaps consistently in alignments of a read as alignments\\nof its reverse complementary sequence."
    random_seed: "(0)\\nSeed for random number generator. By default (0), use current time as seed."
    no_sort_refined_alignments: "(false)\\nOnce candidate alignments are generated and scored via sparse dynamic\\nprogramming, they are rescored using local alignment that accounts\\nfor different error profiles.\\nResorting based on the local alignment may change the order the hits are returned."
    allow_adjacent_indels: "When specified, adjacent insertion or deletions are allowed. Otherwise, adjacent\\ninsertion and deletions are merged into one operation.  Using quality values\\nto guide pairwise alignments may dictate that the higher probability alignment\\ncontains adjacent insertions or deletions.  Current tools such as GATK do not permit\\nthis and so they are not reported by default."
    out: "(terminal)\\nWrite output to 'out'."
    bam: "Write output in PacBio BAM format. This is the preferred output format.\\nInput query reads must be in PacBio BAM format."
    sam: "Write output in SAM format. Starting from version 5.2 is no longer supported\\nUse --bam, then translate from .bam to .sam"
    printing_sam_modify: "If not printing SAM, modify the output of the alignment.\\nt=0 Print blast like output with |'s connecting matched nucleotides.\\n1 Print only a summary: score and pos.\\n2 Print in Compare.xml format.\\n3 Print in vulgar format (DEPRECATED).\\n4 Print a longer tabular version of the alignment.\\n5 Print in a machine-parsable format that is read by compareSequences.py."
    header: "Print a header as the first line of the output file describing the contents of each column."
    title_table: "(NULL)\\nConstruct a table of reference sequence titles.  The reference sequences are\\nenumerated by row, 0,1,...  The reference index is printed in alignment results\\nrather than the full reference name.  This makes output concise, particularly when\\nvery verbose titles exist in reference names."
    unaligned: "Output reads that are not aligned to 'file'"
    no_print_unaligned_seqs: "Must be used together with -unaligned, print unaligned read names only."
    clipping: "[none|hard|subread|soft] (none)\\nUse no/hard/subread/soft clipping, ONLY for SAM/BAM output."
    prints_am_qv: "(false)\\nPrint quality values to SAM output."
    min_match: "(12)\\nMinimum seed length.  Higher minMatch will speed up alignment,\\nbut decrease sensitivity."
    max_match: "(inf)\\nStop mapping a read to the genome when the lcp length reaches l.\\nThis is useful when the query is part of the reference, for example when\\nconstructing pairwise alignments for de novo assembly."
    max_lcp_length: "(inf)\\nThe same as -maxMatch."
    max_anchors_per_position: "(10000)\\nDo not add anchors from a position if it matches to more than 'm' locations in the target."
    advance_exact_matches: "(0)\\nAnother trick for speeding up alignments with match - E fewer anchors.  Rather than\\nfinding anchors between the read and the genome at every position in the read,\\nwhen an anchor is found at position i in a read of length L, the next position\\nin a read to find an anchor is at i+L-E.\\nUse this when alignining already assembled contigs."
    n_candidates: "(10)\\nKeep up to 'n' candidates for the best alignment.  A large value of n will slow mapping\\nbecause the slower dynamic programming steps are applied to more clusters of anchors\\nwhich can be a rate limiting step when reads are very long."
    concordant: "(false)\\nMap all subreads of a zmw (hole) to where the longest full pass subread of the zmw\\naligned to. This requires to use the region table and hq regions.\\nThis option only works when reads are in base or pulse h5 format."
    fast_max_interval: "(false)\\nFast search maximum increasing intervals as alignment candidates. The search\\nis not as exhaustive as the default, but is much faster."
    aggressive_interval_cut: "(false)\\nAgreesively filter out non-promising alignment candidates, if there\\nexists at least one promising candidate. If this option is turned on,\\nBlasr is likely to ignore short alignments of ALU elements."
    fast_sdp: "(false)\\nUse a fast heuristic algorithm to speed up sparse dynamic programming."
    refine_concordant_alignments: "(false)\\nRefine concordant alignments. It slightly increases alignment accuracy at cost of time."
    sdp_tuple_size: "(11)\\nUse matches of length K to speed dynamic programming alignments.  This controls\\naccuracy of assigning gaps in pairwise alignments once a mapping has been found,\\nrather than mapping sensitivity itself."
    score_matrix: "\\\"score matrix string\\\"\\nSpecify an alternative score matrix for scoring fasta reads.  The matrix is\\nin the format\\nACGTN\\nA abcde\\nC fghij\\nG klmno\\nT pqrst\\nN uvwxy . The values a...y should be input as a quoted space separated\\nstring: \\\"a b c ... y\\\". Lower scores are better, so matches should be less\\nthan mismatches e.g. a,g,m,s = -5 (match), mismatch = 6."
    affine_open: "(10)\\nSet the penalty for opening an affine alignment."
    affine_extend: "(0)\\nChange affine (extension) gap penalty. Lower value allows more gaps."
    use_quality: "(false)\\nUse substitution/insertion/deletion/merge quality values to score gap and\\nmismatch penalties in pairwise alignments.  Because the insertion and deletion\\nrates are much higher than substitution, this will make many alignments\\nfavor an insertion/deletion over a substitution.  Naive consensus calling methods\\nwill then often miss substitution polymorphisms. This option should be\\nused when calling consensus using the Quiver method.  Furthermore, when\\nnot using quality values to score alignments, there will be a lower consensus\\naccuracy in homolymer regions."
    affine_align: "(false)\\nRefine alignment using affine guided align."
    min_read_length: "(50)\\nSkip reads that have a full length less than l. Subreads may be shorter."
    min_sub_read_length: "(0)\\nDo not align subreads of length less than l."
    min_raw_sub_read_score: "(0)\\nDo not align subreads whose quality score in region table is less than m (quality scores should be in range [0, 1000])."
    max_score: "(-200)\\nMaximum score to output (high is bad, negative good)."
    min_alnlength: "(0) Report alignments only if their lengths are greater than minAlnLength."
    min_pct_similarity: "(0) Report alignments only if their percentage similarity is greater than minPctSimilarity."
    min_pct_accuracy: "(0) Report alignments only if their percentage accuracy is greater than minAccuracy."
    nproc: "(1)\\nAlign using N processes.  All large data structures such as the suffix array and\\ntuple count table are shared."
    start: "(0)\\nIndex of the first read to begin aligning. This is useful when multiple instances\\nare running on the same data, for example when on a multi-rack cluster."
    stride: "(1)\\nAlign one read every 'S' reads."
    subsample: "(0)\\nProportion of reads to randomly subsample (expressed as a decimal) and align."
    hole_numbers: "When specified, only align reads whose ZMW hole numbers are in LIST.\\nLIST is a comma-delimited string of ranges, such as '1,2,3,10-13'.\\nThis option only works when reads are in bam, bax.h5 or plx.h5 format."
    reads_dot_bam: "is a PacBio BAM file of reads.\\nThis is the preferred input to blasr because rich quality\\nvalue (insertion,deletion, and substitution quality values) information is\\nmaintained.  The extra quality information improves variant detection and mapping\\nspeed."
    input_dot_fof_n: "File of file names accepted."
    reads_dot: "Reads produced by spurrious reads from empty ZMWs have a high"
    specified_dot: "Although reads may be input in FASTA format, the recommended input is"
  }
  output {
    File out_stdout = stdout()
    File out_header = "${in_header}"
    File out_unaligned = "${in_unaligned}"
  }
}