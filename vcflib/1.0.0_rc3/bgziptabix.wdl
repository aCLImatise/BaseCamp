version 1.0

task Bgziptabix {
  command <<<
    bgziptabix
  >>>
  output {
    File out_stdout = stdout()
  }
}