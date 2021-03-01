version 1.0

task Countkmers {
  command <<<
    count_kmers
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}