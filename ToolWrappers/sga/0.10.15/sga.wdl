version 1.0

task Sga {
  command <<<
    sga
  >>>
  output {
    File out_stdout = stdout()
  }
}