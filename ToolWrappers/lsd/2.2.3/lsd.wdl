version 1.0

task Lsd {
  command <<<
    lsd
  >>>
  output {
    File out_stdout = stdout()
  }
}