version 1.0

task FilterShrimp.pl {
  input {
    String? min_score
    Boolean? uniq
    String? uniq_thresh
    Boolean? best
    String? common_gene_file
    Boolean? verbose
  }
  command <<<
    filterShrimp.pl \
      ~{if defined(min_score) then ("--minScore " +  '"' + min_score + '"') else ""} \
      ~{true="--uniq" false="" uniq} \
      ~{if defined(uniq_thresh) then ("--uniqthresh " +  '"' + uniq_thresh + '"') else ""} \
      ~{true="--best" false="" best} \
      ~{if defined(common_gene_file) then ("--commongenefile " +  '"' + common_gene_file + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    min_score: "minimal percentage of identity (default 300)"
    uniq: "take only best match and only, when second best is much worse (default false)"
    uniq_thresh: "the best alignment is considered uniquen when the second best has a score at most this much fraction of the best (default 0.9)"
    best: "take (all) best alignment(s) if they pass the minScore filter."
    common_gene_file: "file name in which to write cases where one read maps to several different genes"
    verbose: "output debugging info (default false)"
  }
}