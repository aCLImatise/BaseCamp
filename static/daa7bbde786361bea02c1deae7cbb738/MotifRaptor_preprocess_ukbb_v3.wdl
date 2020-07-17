version 1.0

task MotifRaptorPreprocessUkbbV3 {
  input {
    String? g_was_summary
    String? threshold
  }
  command <<<
    MotifRaptor preprocess_ukbb_v3 \
      ~{if defined(g_was_summary) then ("--gwas_summary " +  '"' + g_was_summary + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  parameter_meta {
    g_was_summary: "GWAS summary statistic - UKBB v3 tsv filename"
    threshold: "threads for pvalue - default 5E-8"
  }
}