version 1.0

task GencodeExtractRelevantGtfExonspl {
  command <<<
    gencode_extract_relevant_gtf_exons_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}