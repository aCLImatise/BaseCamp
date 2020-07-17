version 1.0

task TacoRun {
  input {
    String? output_dir
    String? num_processes
    Boolean? verbose
    Boolean? resume
    String? assemble
    String? gtf_expr_attr
    String? filter_min_length
    String? filter_min_expr
    Boolean? filter_splice_jun_cs
    String? add_splice_motif
    String? ref_genome_fast_a
    String? isoform_frac
    String? max_isoforms
    Boolean? assemble_un_stranded
    Boolean? no_assemble_un_stranded
    Boolean? change_point
    Boolean? no_change_point
    Float? change_point_p_value
    Float? change_point_fold_change
    Boolean? change_point_trim
    Boolean? no_change_point_trim
    String? path_kmax
    String? path_frac
    String? max_paths
  }
  command <<<
    taco_run \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_processes) then ("--num-processes " +  '"' + num_processes + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--resume" false="" resume} \
      ~{if defined(assemble) then ("--assemble " +  '"' + assemble + '"') else ""} \
      ~{if defined(gtf_expr_attr) then ("--gtf-expr-attr " +  '"' + gtf_expr_attr + '"') else ""} \
      ~{if defined(filter_min_length) then ("--filter-min-length " +  '"' + filter_min_length + '"') else ""} \
      ~{if defined(filter_min_expr) then ("--filter-min-expr " +  '"' + filter_min_expr + '"') else ""} \
      ~{true="--filter-splice-juncs" false="" filter_splice_jun_cs} \
      ~{if defined(add_splice_motif) then ("--add-splice-motif " +  '"' + add_splice_motif + '"') else ""} \
      ~{if defined(ref_genome_fast_a) then ("--ref-genome-fasta " +  '"' + ref_genome_fast_a + '"') else ""} \
      ~{if defined(isoform_frac) then ("--isoform-frac " +  '"' + isoform_frac + '"') else ""} \
      ~{if defined(max_isoforms) then ("--max-isoforms " +  '"' + max_isoforms + '"') else ""} \
      ~{true="--assemble-unstranded" false="" assemble_un_stranded} \
      ~{true="--no-assemble-unstranded" false="" no_assemble_un_stranded} \
      ~{true="--change-point" false="" change_point} \
      ~{true="--no-change-point" false="" no_change_point} \
      ~{if defined(change_point_p_value) then ("--change-point-pvalue " +  '"' + change_point_p_value + '"') else ""} \
      ~{if defined(change_point_fold_change) then ("--change-point-fold-change " +  '"' + change_point_fold_change + '"') else ""} \
      ~{true="--change-point-trim" false="" change_point_trim} \
      ~{true="--no-change-point-trim" false="" no_change_point_trim} \
      ~{if defined(path_kmax) then ("--path-kmax " +  '"' + path_kmax + '"') else ""} \
      ~{if defined(path_frac) then ("--path-frac " +  '"' + path_frac + '"') else ""} \
      ~{if defined(max_paths) then ("--max-paths " +  '"' + max_paths + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "directory where output files will be stored (if already exists then --resume must be specified) [default=output]"
    num_processes: "Run TACO in parallel with N processes [default=1]"
    verbose: "Enabled detailed logging (for debugging)"
    resume: "Resumes an existing run that may have ended prematurely. Specify the location of the run using the -o/--output-dir option."
    assemble: "Assemble transfrags produced by a previous TACO run, bypassing the GTF aggregation step. Accepts a taco- formatted BED file."
    gtf_expr_attr: "GTF attribute field containing expression [default=FPKM]"
    filter_min_length: "Filter input transfrags with length < N prior to assembly [default=200]"
    filter_min_expr: "Filter input transfrags with expression (FPKM/TPM) < X prior to assembly [default=0.5]"
    filter_splice_jun_cs: "Filter input transfrags that possess non-canonical splice motifs prior to assembly. Splice motifs are GTAG, GCAG, and ATAC are allowed [default=False]. Requires genome sequence to be specified using --ref- genome-fasta."
    add_splice_motif: "Add additional splice junction motifs to permit when using the --filter-splice-juncs flag. Use this flag multiple times for each additional junction motif. Motif must be 4 bases."
    ref_genome_fast_a: "Reference genome sequence in FASTA format needed to assess splice junction motif sequences. Use in conjunction with --filter-splice-juncs."
    isoform_frac: "Report transcript isoforms with expression fraction >= FRAC (0.0-1.0) relative to the major isoform within each gene [default=0.05]"
    max_isoforms: "Maximum isoforms to report for each gene [default=0]"
    assemble_un_stranded: "Enable assembly of unstranded transfrags [default=False]"
    no_assemble_un_stranded: "Disable assembly of unstranded transfrags"
    change_point: "Enable change point detection [default=True]"
    no_change_point: "Disable change point detection"
    change_point_p_value: "Mann-Whitney-U p-value threshold for calling change points [default=0.01]"
    change_point_fold_change: "Fold change threshold between the means of two putative segments on either side of a change point. A value of 0.0 is the most strict setting, effectively calling no change points. Conversely, setting the value to 1.0 calls allchange points [default=0.85]"
    change_point_trim: "Trim transfrags around change points [default=True]"
    no_change_point_trim: "Disable trimming around change points"
    path_kmax: "Limit optimization for choosing parameter k for path graph (DeBruijn graph) to k <= kmax [default=0]"
    path_frac: "dynamic programming algorithm will stop finding suboptimal paths when path expression drops below a fraction X (0.0-1.0) of the total locus expression [default=0.0]"
    max_paths: "dynamic programming algorithm will stop after finding N paths [default=0]"
  }
}