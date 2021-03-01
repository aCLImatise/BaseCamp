version 1.0

task MetaCluster51 {
  command <<<
    MetaCluster5_1
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}