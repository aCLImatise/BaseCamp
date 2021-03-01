version 1.0

task Moodsdnapy {
  input {
    Boolean? verbosity
    Array[String] matrices
    Array[String] score_matrices
    Array[String] sequences
    String? p_value
    String? threshold
    String? best_hits
    File? outfile
    String? sep
    Boolean? no_rc
    Boolean? no_snps
    Boolean? batch
    Float? bg
    Float? ps
    String? log_base
    Float? lo_bg
    Float? threshold_precision
  }
  command <<<
    moods_dna_py \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(score_matrices) then ("--score-matrices " +  '"' + score_matrices + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(p_value) then ("--p-value " +  '"' + p_value + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(best_hits) then ("--best-hits " +  '"' + best_hits + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if (no_rc) then "--no-rc" else ""} \
      ~{if (no_snps) then "--no-snps" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(ps) then ("--ps " +  '"' + ps + '"') else ""} \
      ~{if defined(log_base) then ("--log-base " +  '"' + log_base + '"') else ""} \
      ~{if defined(lo_bg) then ("--lo-bg " +  '"' + lo_bg + '"') else ""} \
      ~{if defined(threshold_precision) then ("--threshold-precision " +  '"' + threshold_precision + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "verbose (-vv, -vvv for more)"
    matrices: "matrix files (count/frequency, will be converted to\\nPWM before matching)"
    score_matrices: "matrix files (PWM/other score matrix, will be matched\\ndirectly)"
    sequences: "sequence files"
    p_value: "compute threshold from p-value"
    threshold: "use specified absolute threshold"
    best_hits: "return at least the specified amount of best matches"
    outfile: "output to file instead of standard output"
    sep: "set field separator in out (default \\\",\\\")"
    no_rc: "disable matching versus reverse complement strand"
    no_snps: "ignore IUPAC symbols coding multiple nucleotides"
    batch: "do not recompute thresholds from p-values for each\\nsequence separately (recommended when dealing with\\nlots of short sequences)"
    bg: "pC pG pT      background distribution for computing thresholds from\\np-value with --batch (default is 0.25 for all alleles)"
    ps: "total pseudocount added to each matrix column in log-\\nodds conversion (default = 0.01)"
    log_base: "logarithm base for log-odds conversion (default\\nnatural logarithm)"
    lo_bg: "pC pG pT   background distribution for log-odds conversion\\n(default is 0.25 for all alleles)"
    threshold_precision: "specify the precision used for computing the\\nthresholds from p-values (default = 2000.0)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}