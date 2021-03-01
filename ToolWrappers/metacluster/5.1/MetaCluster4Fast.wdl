version 1.0

task MetaCluster4Fast {
  command <<<
    MetaCluster4Fast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}