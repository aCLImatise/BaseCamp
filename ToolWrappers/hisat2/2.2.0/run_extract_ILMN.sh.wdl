version 1.0

task RunExtractILMNsh {
  command <<<
    run_extract_ILMN_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}