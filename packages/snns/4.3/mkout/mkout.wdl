version 1.0

task Mkout {
  command <<<
    mkout
  >>>
  output {
    File out_stdout = stdout()
  }
}