version 1.0

task Gustaf {
  input {
    Boolean? version_check
    Int? trans_pen
    Int? in_v_pen
    Int? order_pen
    String? overlap_thresh
    Int? gap_thresh
    Int? in_it_gap_thresh
    Int? break_end_thresh
    Int? tandem_thresh
    Int? breakpoint_pos_range
    Boolean? complex_breakpoints
    Int? support
    Int? mate_support
    Int? library_size
    Int? library_error
    Boolean? rev_compl
    String? match_file
    String? gff_out
    String? vcf_out
    String? job_name
    Boolean? dots
    Int? num_threads
    String? epsilon
    Int? minlength
    Boolean? forward
    Boolean? reverse
    String? alphabet
    Boolean? verbose
    Int? km_er
    Int? repeat_period
    Int? repeat_length
    String? abundance_cut
    String? x_drop
    String? verification
    Int? disable_thresh
    Int? num_matches
    Int? sort_thresh
  }
  command <<<
    gustaf \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(trans_pen) then ("--transPen " +  '"' + trans_pen + '"') else ""} \
      ~{if defined(in_v_pen) then ("--invPen " +  '"' + in_v_pen + '"') else ""} \
      ~{if defined(order_pen) then ("--orderPen " +  '"' + order_pen + '"') else ""} \
      ~{if defined(overlap_thresh) then ("--overlapThresh " +  '"' + overlap_thresh + '"') else ""} \
      ~{if defined(gap_thresh) then ("--gapThresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(in_it_gap_thresh) then ("--initGapThresh " +  '"' + in_it_gap_thresh + '"') else ""} \
      ~{if defined(break_end_thresh) then ("--breakendThresh " +  '"' + break_end_thresh + '"') else ""} \
      ~{if defined(tandem_thresh) then ("--tandemThresh " +  '"' + tandem_thresh + '"') else ""} \
      ~{if defined(breakpoint_pos_range) then ("--breakpoint-pos-range " +  '"' + breakpoint_pos_range + '"') else ""} \
      ~{true="--complex-breakpoints" false="" complex_breakpoints} \
      ~{if defined(support) then ("--support " +  '"' + support + '"') else ""} \
      ~{if defined(mate_support) then ("--mate-support " +  '"' + mate_support + '"') else ""} \
      ~{if defined(library_size) then ("--library-size " +  '"' + library_size + '"') else ""} \
      ~{if defined(library_error) then ("--library-error " +  '"' + library_error + '"') else ""} \
      ~{true="--revcompl" false="" rev_compl} \
      ~{if defined(match_file) then ("--matchfile " +  '"' + match_file + '"') else ""} \
      ~{if defined(gff_out) then ("--gffOut " +  '"' + gff_out + '"') else ""} \
      ~{if defined(vcf_out) then ("--vcfOut " +  '"' + vcf_out + '"') else ""} \
      ~{if defined(job_name) then ("--jobName " +  '"' + job_name + '"') else ""} \
      ~{true="--dots" false="" dots} \
      ~{if defined(num_threads) then ("--numThreads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if defined(minlength) then ("--minLength " +  '"' + minlength + '"') else ""} \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(repeat_period) then ("--repeatPeriod " +  '"' + repeat_period + '"') else ""} \
      ~{if defined(repeat_length) then ("--repeatLength " +  '"' + repeat_length + '"') else ""} \
      ~{if defined(abundance_cut) then ("--abundanceCut " +  '"' + abundance_cut + '"') else ""} \
      ~{if defined(x_drop) then ("--xDrop " +  '"' + x_drop + '"') else ""} \
      ~{if defined(verification) then ("--verification " +  '"' + verification + '"') else ""} \
      ~{if defined(disable_thresh) then ("--disableThresh " +  '"' + disable_thresh + '"') else ""} \
      ~{if defined(num_matches) then ("--numMatches " +  '"' + num_matches + '"') else ""} \
      ~{if defined(sort_thresh) then ("--sortThresh " +  '"' + sort_thresh + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    trans_pen: "Interchromosomal translocation penalty Default: 5."
    in_v_pen: "Inversion penalty Default: 5."
    order_pen: "Intrachromosomal order change penalty Default: 0."
    overlap_thresh: "Allowed overlap between matches Default: 0.5."
    gap_thresh: "Allowed gap length between matches, default value corresponse to expected size of microindels (5 bp) Default: 5."
    in_it_gap_thresh: "Allowed initial or ending gap length at begin and end of read with no breakpoint (e.g. due to sequencing errors at the end) Default: 15."
    break_end_thresh: "Allowed initial or ending gap length at begin and end of read that creates a breakend/breakpoint (e.g. for reads extending into insertions) Default: 30."
    tandem_thresh: "Minimal length of (small) insertion/duplication with double overlap to be considered tandem repeat Default: 50."
    breakpoint_pos_range: "Allowed difference in breakpoint position Default: 5."
    complex_breakpoints: "Disable inferring complex SVs"
    support: "Number of supporting reads Default: 2."
    mate_support: "Number of supporting concordant mates Default: 2."
    library_size: "Library size of paired-end reads"
    library_error: "Library error (sd) of paired-end reads"
    rev_compl: "Disable reverse complementing second mate pair input file."
    match_file: "File of (stellar) matches Valid filetypes are: .gff and .GFF."
    gff_out: "Name of gff breakpoint output file. Valid filetypes are: .txt and .gff. Default: breakpoints.gff."
    vcf_out: "Name of vcf breakpoint output file. Valid filetypes are: .vcf and .txt. Default: breakpoints.vcf."
    job_name: "Job/Queue name Default: ."
    dots: "Enable graph output in dot format"
    num_threads: "Number of threads for parallelization of I/O. Default: 1."
    epsilon: "Maximal error rate (max 0.25). In range [0.0000001..0.25]. Default: 0.05."
    minlength: "Minimal length of epsilon-matches. In range [0..inf]. Default: 100."
    forward: "Search only in forward strand of database."
    reverse: "Search only in reverse complement of database."
    alphabet: "Alphabet type of input sequences (dna, rna, dna5, rna5, protein, char). One of dna, dna5, rna, rna5, protein, and char."
    verbose: "Set verbosity mode."
    km_er: "Length of the q-grams (max 32). In range [1..32]."
    repeat_period: "Maximal period of low complexity repeats to be filtered. Default: 1."
    repeat_length: "Minimal length of low complexity repeats to be filtered. Default: 1000."
    abundance_cut: "k-mer overabundance cut ratio. In range [0..1]. Default: 1."
    x_drop: "Maximal x-drop for extension. Default: 5."
    verification: "Verification strategy: exact or bestLocal or bandedGlobal One of exact, bestLocal, and bandedGlobal. Default: exact."
    disable_thresh: "Maximal number of verified matches before disabling verification for one query sequence (default infinity). In range [0..inf]."
    num_matches: "Maximal number of kept matches per query and database. If STELLAR finds more matches, only the longest ones are kept. Default: 50."
    sort_thresh: "Number of matches triggering removal of duplicates. Choose a smaller value for saving space. Default: 500."
  }
}