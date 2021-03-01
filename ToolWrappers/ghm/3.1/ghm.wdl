version 1.0

task Ghm {
  command <<<
    ghm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}