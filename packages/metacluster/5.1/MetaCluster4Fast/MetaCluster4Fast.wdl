version 1.0

task MetaCluster4Fast {
  command <<<
    MetaCluster4Fast
  >>>
  output {
    File out_stdout = stdout()
  }
}