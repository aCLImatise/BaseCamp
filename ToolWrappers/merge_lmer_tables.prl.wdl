version 1.0

task Mergelmertablesprl {
  command <<<
    merge_lmer_tables_prl
  >>>
  output {
    File out_stdout = stdout()
  }
}