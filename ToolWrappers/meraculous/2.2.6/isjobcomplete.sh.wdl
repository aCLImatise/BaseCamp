version 1.0

task Isjobcompletesh {
  command <<<
    isjobcomplete_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}