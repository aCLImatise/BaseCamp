version 1.0

task Seqcluster {
  command <<<
    seqcluster
  >>>
  output {
    File out_stdout = stdout()
  }
}