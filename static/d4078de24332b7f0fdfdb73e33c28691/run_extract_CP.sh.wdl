version 1.0

task RunExtractCPsh {
  command <<<
    run_extract_CP_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}