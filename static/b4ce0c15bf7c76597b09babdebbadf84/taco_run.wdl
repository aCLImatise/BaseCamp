version 1.0

task TacoRun {
  input {
    Directory? output_dir
    Int? num_processes
    Boolean? verbose
    Boolean? resume
    File? assemble
    String? gtf_expr_attr
    Int? filter_min_length
    Int? filter_min_expr
    Boolean? filter_splice_jun_cs
    Int? add_splice_motif
    File? ref_genome_fast_a
    Float? isoform_frac
    Int? max_isoforms
    Boolean? assemble_un_stranded
    Boolean? no_assemble_un_stranded
    Boolean? change_point
    Boolean? no_change_point
    Int? change_point_p_value
    Int? change_point_fold_change
    Boolean? change_point_trim
    Boolean? no_change_point_trim
    File? path_kmax
    File? path_frac
    Int? max_paths
    String sample_file
  }
  command <<<
    taco_run \
      ~{sample_file} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_processes) then ("--num-processes " +  '"' + num_processes + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(assemble) then ("--assemble " +  '"' + assemble + '"') else ""} \
      ~{if defined(gtf_expr_attr) then ("--gtf-expr-attr " +  '"' + gtf_expr_attr + '"') else ""} \
      ~{if defined(filter_min_length) then ("--filter-min-length " +  '"' + filter_min_length + '"') else ""} \
      ~{if defined(filter_min_expr) then ("--filter-min-expr " +  '"' + filter_min_expr + '"') else ""} \
      ~{if (filter_splice_jun_cs) then "--filter-splice-juncs" else ""} \
      ~{if defined(add_splice_motif) then ("--add-splice-motif " +  '"' + add_splice_motif + '"') else ""} \
      ~{if defined(ref_genome_fast_a) then ("--ref-genome-fasta " +  '"' + ref_genome_fast_a + '"') else ""} \
      ~{if defined(isoform_frac) then ("--isoform-frac " +  '"' + isoform_frac + '"') else ""} \
      ~{if defined(max_isoforms) then ("--max-isoforms " +  '"' + max_isoforms + '"') else ""} \
      ~{if (assemble_un_stranded) then "--assemble-unstranded" else ""} \
      ~{if (no_assemble_un_stranded) then "--no-assemble-unstranded" else ""} \
      ~{if (change_point) then "--change-point" else ""} \
      ~{if (no_change_point) then "--no-change-point" else ""} \
      ~{if defined(change_point_p_value) then ("--change-point-pvalue " +  '"' + change_point_p_value + '"') else ""} \
      ~{if defined(change_point_fold_change) then ("--change-point-fold-change " +  '"' + change_point_fold_change + '"') else ""} \
      ~{if (change_point_trim) then "--change-point-trim" else ""} \
      ~{if (no_change_point_trim) then "--no-change-point-trim" else ""} \
      ~{if defined(path_kmax) then ("--path-kmax " +  '"' + path_kmax + '"') else ""} \
      ~{if defined(path_frac) then ("--path-frac " +  '"' + path_frac + '"') else ""} \
      ~{if defined(max_paths) then ("--max-paths " +  '"' + max_paths + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "directory where output files will be stored (if\\nalready exists then --resume must be specified)\\n[default=output]"
    num_processes: "Run TACO in parallel with N processes [default=1]"
    verbose: "Enabled detailed logging (for debugging)"
    resume: "Resumes an existing run that may have ended\\nprematurely. Specify the location of the run using the\\n-o/--output-dir option."
    assemble: "Assemble transfrags produced by a previous TACO run,\\nbypassing the GTF aggregation step. Accepts a taco-\\nformatted BED file."
    gtf_expr_attr: "GTF attribute field containing expression\\n[default=FPKM]"
    filter_min_length: "Filter input transfrags with length < N prior to\\nassembly [default=200]"
    filter_min_expr: "Filter input transfrags with expression (FPKM/TPM) < X\\nprior to assembly [default=0.5]"
    filter_splice_jun_cs: "Filter input transfrags that possess non-canonical\\nsplice motifs prior to assembly. Splice motifs are\\nGTAG, GCAG, and ATAC are allowed [default=False].\\nRequires genome sequence to be specified using --ref-\\ngenome-fasta."
    add_splice_motif: "Add additional splice junction motifs to permit when\\nusing the --filter-splice-juncs flag. Use this flag\\nmultiple times for each additional junction motif.\\nMotif must be 4 bases."
    ref_genome_fast_a: "Reference genome sequence in FASTA format needed to\\nassess splice junction motif sequences. Use in\\nconjunction with --filter-splice-juncs."
    isoform_frac: "Report transcript isoforms with expression fraction >=\\nFRAC (0.0-1.0) relative to the major isoform within\\neach gene [default=0.05]"
    max_isoforms: "Maximum isoforms to report for each gene [default=0]"
    assemble_un_stranded: "Enable assembly of unstranded transfrags\\n[default=False]"
    no_assemble_un_stranded: "Disable assembly of unstranded transfrags"
    change_point: "Enable change point detection [default=True]"
    no_change_point: "Disable change point detection"
    change_point_p_value: "Mann-Whitney-U p-value threshold for calling change\\npoints [default=0.01]"
    change_point_fold_change: "Fold change threshold between the means of two\\nputative segments on either side of a change point. A\\nvalue of 0.0 is the most strict setting, effectively\\ncalling no change points. Conversely, setting the\\nvalue to 1.0 calls allchange points [default=0.85]"
    change_point_trim: "Trim transfrags around change points [default=True]"
    no_change_point_trim: "Disable trimming around change points"
    path_kmax: "Limit optimization for choosing parameter k for path\\ngraph (DeBruijn graph) to k <= kmax [default=0]"
    path_frac: "dynamic programming algorithm will stop finding\\nsuboptimal paths when path expression drops below a\\nfraction X (0.0-1.0) of the total locus expression\\n[default=0.0]"
    max_paths: "dynamic programming algorithm will stop after finding\\nN paths [default=0]\\n"
    sample_file: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}