version 1.0

task MoodsDna.py {
  input {
    Boolean? verbosity
    Array[String] matrices
    Array[String] score_matrices
    Array[String] sequences
    String? p_value
    String? threshold
    String? best_hits
    String? outfile
    String? sep
    Boolean? no_rc
    Boolean? no_snps
    Boolean? batch
    String? bg
    String? ps
    String? log_base
    String? lo_bg
    String? threshold_precision
  }
  command <<<
    moods-dna.py \
      ~{true="--verbosity" false="" verbosity} \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(score_matrices) then ("--score-matrices " +  '"' + score_matrices + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(p_value) then ("--p-value " +  '"' + p_value + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(best_hits) then ("--best-hits " +  '"' + best_hits + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{true="--no-rc" false="" no_rc} \
      ~{true="--no-snps" false="" no_snps} \
      ~{true="--batch" false="" batch} \
      ~{if defined(bg) then ("--bg " +  '"' + bg + '"') else ""} \
      ~{if defined(ps) then ("--ps " +  '"' + ps + '"') else ""} \
      ~{if defined(log_base) then ("--log-base " +  '"' + log_base + '"') else ""} \
      ~{if defined(lo_bg) then ("--lo-bg " +  '"' + lo_bg + '"') else ""} \
      ~{if defined(threshold_precision) then ("--threshold-precision " +  '"' + threshold_precision + '"') else ""}
  >>>
  parameter_meta {
    verbosity: "verbose (-vv, -vvv for more)"
    matrices: "matrix files (count/frequency, will be converted to PWM before matching)"
    score_matrices: "matrix files (PWM/other score matrix, will be matched directly)"
    sequences: "sequence files"
    p_value: "compute threshold from p-value"
    threshold: "use specified absolute threshold"
    best_hits: "return at least the specified amount of best matches"
    outfile: "output to file instead of standard output"
    sep: "set field separator in out (default \",\")"
    no_rc: "disable matching versus reverse complement strand"
    no_snps: "ignore IUPAC symbols coding multiple nucleotides"
    batch: "do not recompute thresholds from p-values for each sequence separately (recommended when dealing with lots of short sequences)"
    bg: "pC pG pT      background distribution for computing thresholds from p-value with --batch (default is 0.25 for all alleles)"
    ps: "total pseudocount added to each matrix column in log- odds conversion (default = 0.01)"
    log_base: "logarithm base for log-odds conversion (default natural logarithm)"
    lo_bg: "pC pG pT   background distribution for log-odds conversion (default is 0.25 for all alleles)"
    threshold_precision: "specify the precision used for computing the thresholds from p-values (default = 2000.0)"
  }
}