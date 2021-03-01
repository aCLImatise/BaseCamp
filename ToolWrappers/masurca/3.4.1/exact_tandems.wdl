version 1.0

task Exacttandems {
  command <<<
    exact_tandems
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}