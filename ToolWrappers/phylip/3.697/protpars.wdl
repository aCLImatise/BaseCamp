version 1.0

task Protpars {
  command <<<
    protpars
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}