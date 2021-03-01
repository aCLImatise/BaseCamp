version 1.0

task MotifRaptorPreprocessUkbbV3 {
  input {
    File? g_was_summary
    Float? threshold
  }
  command <<<
    MotifRaptor preprocess_ukbb_v3 \
      ~{if defined(g_was_summary) then ("--gwas_summary " +  '"' + g_was_summary + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_was_summary: "GWAS summary statistic - UKBB v3 tsv filename"
    threshold: "threads for pvalue - default 5E-8\\n"
  }
  output {
    File out_stdout = stdout()
  }
}