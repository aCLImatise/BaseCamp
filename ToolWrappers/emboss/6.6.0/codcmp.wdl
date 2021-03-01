version 1.0

task Codcmp {
  command <<<
    codcmp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}