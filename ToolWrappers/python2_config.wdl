version 1.0

task Python2config {
  command <<<
    python2_config
  >>>
  output {
    File out_stdout = stdout()
  }
}