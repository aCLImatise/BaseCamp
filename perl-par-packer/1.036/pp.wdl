version 1.0

task Pp {
  command <<<
    pp
  >>>
  output {
    File out_stdout = stdout()
  }
}