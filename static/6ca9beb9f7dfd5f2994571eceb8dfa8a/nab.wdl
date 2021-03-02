version 1.0

task Nab {
  command <<<
    nab
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}