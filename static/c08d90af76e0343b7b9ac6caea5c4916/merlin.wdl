version 1.0

task Merlin {
  command <<<
    merlin
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}