version 1.0

task HtsNimTools {
  command <<<
    hts_nim_tools
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}