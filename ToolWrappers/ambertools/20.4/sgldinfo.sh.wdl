version 1.0

task Sgldinfosh {
  command <<<
    sgldinfo_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}