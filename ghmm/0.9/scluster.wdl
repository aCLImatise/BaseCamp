version 1.0

task Scluster {
  command <<<
    scluster
  >>>
  output {
    File out_stdout = stdout()
  }
}