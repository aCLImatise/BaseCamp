version 1.0

task Mkhead {
  command <<<
    mkhead
  >>>
  output {
    File out_stdout = stdout()
  }
}