version 1.0

task Makeblastdb {
  command <<<
    makeblastdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}