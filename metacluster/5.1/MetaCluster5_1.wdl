version 1.0

task MetaCluster51 {
  command <<<
    MetaCluster5_1
  >>>
  output {
    File out_stdout = stdout()
  }
}