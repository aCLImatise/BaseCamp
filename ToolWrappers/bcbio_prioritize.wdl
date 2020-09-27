version 1.0

task Bcbioprioritize {
  command <<<
    bcbio_prioritize
  >>>
  output {
    File out_stdout = stdout()
  }
}