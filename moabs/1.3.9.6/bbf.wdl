version 1.0

task Bbf {
  command <<<
    bbf
  >>>
  output {
    File out_stdout = stdout()
  }
}