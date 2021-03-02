version 1.0

task MotifRaptorPreprocess {
  input {
    File? g_was_summary
    Int? column_numbers
    File? score_type
    Float? threshold
  }
  command <<<
    MotifRaptor preprocess \
      ~{if defined(g_was_summary) then ("--gwas_summary " +  '"' + g_was_summary + '"') else ""} \
      ~{if defined(column_numbers) then ("--column_numbers " +  '"' + column_numbers + '"') else ""} \
      ~{if defined(score_type) then ("--score_type " +  '"' + score_type + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    g_was_summary: "GWAS summary statistic file"
    column_numbers: "provide six column numbers for information in such\\norder: ID,CHR,POS,A1,A2,SCORE eg. 1,2,3,4,5,6"
    score_type: "Score type in GWAS summary statistic file: pvalue or\\nzscore or chisquare"
    threshold: "threads for pvalue - default 5E-8\\n"
  }
  output {
    File out_stdout = stdout()
  }
}