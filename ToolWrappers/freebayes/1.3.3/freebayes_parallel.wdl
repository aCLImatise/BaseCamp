version 1.0

task Freebayesparallel {
  command <<<
    freebayes_parallel
  >>>
  output {
    File out_stdout = stdout()
  }
}