version 1.0

task RunExtractCPsh {
  command <<<
    run_extract_CP_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}