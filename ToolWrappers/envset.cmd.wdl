version 1.0

task Envsetcmd {
  command <<<
    envset_cmd
  >>>
  output {
    File out_stdout = stdout()
  }
}