version 1.0

task KmerFilter {
  command <<<
    KmerFilter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}