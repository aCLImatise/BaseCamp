version 1.0

task RunExtractILMNsh {
  command <<<
    run_extract_ILMN_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}