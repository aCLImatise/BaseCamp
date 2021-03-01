version 1.0

task MetaCluster52 {
  command <<<
    MetaCluster5_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}