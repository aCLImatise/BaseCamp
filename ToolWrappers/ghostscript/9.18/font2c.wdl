version 1.0

task Font2c {
  command <<<
    font2c
  >>>
  output {
    File out_stdout = stdout()
  }
}