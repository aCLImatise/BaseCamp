version 1.0

task IsONcorrect {
  input {
    File? fast_q
    Int? kmer_size_default
    Int? window_size_default
    Int? xmin
    Int? xmax
    Float? minimum_fraction_keeping
    Boolean? exact
    Boolean? disable_numpy
    Int? max_seqs_to_spo_a
    Int? max_seqs
    Boolean? use_rac_on
    Int? exact_instance_limit
    Boolean? set_w_dynamically
    Boolean? verbose
    Boolean? compression
    Directory? out_folder
  }
  command <<<
    isONcorrect \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(kmer_size_default) then ("--k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(window_size_default) then ("--w " +  '"' + window_size_default + '"') else ""} \
      ~{if defined(xmin) then ("--xmin " +  '"' + xmin + '"') else ""} \
      ~{if defined(xmax) then ("--xmax " +  '"' + xmax + '"') else ""} \
      ~{if defined(minimum_fraction_keeping) then ("--T " +  '"' + minimum_fraction_keeping + '"') else ""} \
      ~{if (exact) then "--exact" else ""} \
      ~{if (disable_numpy) then "--disable_numpy" else ""} \
      ~{if defined(max_seqs_to_spo_a) then ("--max_seqs_to_spoa " +  '"' + max_seqs_to_spo_a + '"') else ""} \
      ~{if defined(max_seqs) then ("--max_seqs " +  '"' + max_seqs + '"') else ""} \
      ~{if (use_rac_on) then "--use_racon" else ""} \
      ~{if defined(exact_instance_limit) then ("--exact_instance_limit " +  '"' + exact_instance_limit + '"') else ""} \
      ~{if (set_w_dynamically) then "--set_w_dynamically" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (compression) then "--compression" else ""} \
      ~{if defined(out_folder) then ("--outfolder " +  '"' + out_folder + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "Path to input fastq file with reads (default: False)"
    kmer_size_default: "Kmer size (default: 9)"
    window_size_default: "Window size (default: 10)"
    xmin: "Upper interval length (default: 14)"
    xmax: "Lower interval length (default: 80)"
    minimum_fraction_keeping: "Minimum fraction keeping substitution (default: 0.1)"
    exact: "Get exact solution for WIS for evary read\\n(recalculating weights for each read (much slower but\\nslightly more accuracy, not to be used for clusters\\nwith over ~500 reads) (default: False)"
    disable_numpy: "Do not require numpy to be installed, but this version\\nis about 1.5x slower than with numpy. (default: False)"
    max_seqs_to_spo_a: "Maximum number of seqs to spoa (default: 200)"
    max_seqs: "Maximum number of seqs to correct at a time (in case\\nof large clusters). (default: 1000)"
    use_rac_on: "Use racon to polish consensus after spoa (more time\\nconsuming but higher accuracy). (default: False)"
    exact_instance_limit: "Activates slower exact mode for instance smaller than\\nthis limit (default: 0)"
    set_w_dynamically: "Set w = k + max(2*k, floor(cluster_size/1000)).\\n(default: False)"
    verbose: "Print various developer stats. (default: False)"
    compression: "Use homopolymenr compressed reads. (Deprecated,\\nbecause we will have fewer minmimizer combinations to\\nspan regions in homopolymenr dense regions. Solution\\ncould be to adjust upper interval legnth dynamically\\nto guarantee a certain number of spanning intervals.\\n(default: False)"
    out_folder: "A fasta file with transcripts that are shared between\\nsamples and have perfect illumina support. (default:\\nNone)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_folder = "${in_out_folder}"
  }
}