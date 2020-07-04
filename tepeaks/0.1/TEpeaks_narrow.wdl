version 1.0

task TEpeaksNarrow {
  input {
    String? keep_dup
    Int? shift
    Int? lm_fold
    Int? hm_fold
    String? fdr
    Boolean? to_large
    Int? threads
    Int? pile_up
    String? fe
    String? arguments
    String alignment_files
  }
  command <<<
    TEpeaks narrow \
      ~{arguments} \
      ~{alignment_files} \
      ~{if defined(keep_dup) then ("--keepDup " +  '"' + keep_dup + '"') else ""} \
      ~{if defined(shift) then ("--shift " +  '"' + shift + '"') else ""} \
      ~{if defined(lm_fold) then ("--lmfold " +  '"' + lm_fold + '"') else ""} \
      ~{if defined(hm_fold) then ("--hmfold " +  '"' + hm_fold + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{true="--toLarge" false="" to_large} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(pile_up) then ("--pileup " +  '"' + pile_up + '"') else ""} \
      ~{if defined(fe) then ("--fe " +  '"' + fe + '"') else ""}
  >>>
  parameter_meta {
    keep_dup: "How to deal with duplicate reads. The valid values are 'auto', 'all', or 1 (default: auto)"
    shift: "Shift reads towards 3' end, if positive, or 5' end if negative. (default: 0)"
    lm_fold: "Lower limit of fold ratio against background to build model (default: 10)"
    hm_fold: "Higher limit of fold ratio against background to build model (default: 30)"
    fdr: "False discovery rate cutoff (default: 0.05)"
    to_large: "Scale library size to large sample (default: off)"
    threads: "Number of threads to use (default: 1)"
    pile_up: "The minuim pileup required for peaks with multi-reads (default: 20)"
    fe: "The minuim fold enrichment required for peaks with multi-reads (default: 3)"
    arguments: ""
    alignment_files: ""
  }
}