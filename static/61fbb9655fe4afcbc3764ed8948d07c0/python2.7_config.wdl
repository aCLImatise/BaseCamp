version 1.0

task Python27config {
  command <<<
    python2_7_config
  >>>
  output {
    File out_stdout = stdout()
  }
}