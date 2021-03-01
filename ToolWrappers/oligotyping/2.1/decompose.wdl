version 1.0

task Decompose {
  command <<<
    decompose
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}