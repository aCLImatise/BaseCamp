version 1.0

task Freebayesparallel {
  command <<<
    freebayes_parallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}