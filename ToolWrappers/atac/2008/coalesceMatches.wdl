version 1.0

task CoalesceMatches {
  command <<<
    coalesceMatches
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}