version 1.0

task DDocent {
  command <<<
    dDocent
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}