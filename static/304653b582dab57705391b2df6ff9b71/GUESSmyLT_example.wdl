version 1.0

task GUESSmyLTexample {
  command <<<
    GUESSmyLT_example
  >>>
  output {
    File out_stdout = stdout()
  }
}