version 1.0

task PvacseqBindingFilter {
  input {
    Int? binding_threshold
    Int? minimum_fold_change
    String? top_score_metric
  }
  command <<<
    pvacseq binding_filter \
      ~{if defined(binding_threshold) then ("--binding-threshold " +  '"' + binding_threshold + '"') else ""} \
      ~{if defined(minimum_fold_change) then ("--minimum-fold-change " +  '"' + minimum_fold_change + '"') else ""} \
      ~{if defined(top_score_metric) then ("--top-score-metric " +  '"' + top_score_metric + '"') else ""}
  >>>
  parameter_meta {
    binding_threshold: "Report only epitopes where the mutant allele has ic50\\nbinding scores below this value. Default: 500"
    minimum_fold_change: "Minimum fold change between mutant binding score and\\nwild-type score. The default is 0, which filters no\\nresults, but 1 is often a sensible option (requiring\\nthat binding is better to the MT than WT). Default: 0"
    top_score_metric: "The ic50 scoring metric to use when filtering epitopes\\nby binding-threshold or minimum fold change. lowest:\\nBest MT Score/Corresponding Fold Change - lowest MT\\nic50 binding score/corresponding fold change of all\\nchosen prediction methods. median: Median MT\\nScore/Median Fold Change - median MT ic50 binding\\nscore/fold change of all chosen prediction methods.\\nDefault: median\\n"
  }
  output {
    File out_stdout = stdout()
  }
}