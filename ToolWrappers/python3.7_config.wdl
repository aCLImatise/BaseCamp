version 1.0

task Python37config {
  command <<<
    python3_7_config
  >>>
  output {
    File out_stdout = stdout()
  }
}