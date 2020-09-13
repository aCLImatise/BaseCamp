version 1.0

task PLEKrange {
  command <<<
    PLEK_range
  >>>
  output {
    File out_stdout = stdout()
  }
}