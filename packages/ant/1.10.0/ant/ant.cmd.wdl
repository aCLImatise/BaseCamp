version 1.0

task Antcmd {
  command <<<
    ant_cmd
  >>>
  output {
    File out_stdout = stdout()
  }
}