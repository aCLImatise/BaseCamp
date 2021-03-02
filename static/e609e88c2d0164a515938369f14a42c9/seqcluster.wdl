version 1.0

task Seqcluster {
  command <<<
    seqcluster
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}