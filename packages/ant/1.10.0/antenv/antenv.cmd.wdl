version 1.0

task Antenvcmd {
  command <<<
    antenv_cmd
  >>>
  output {
    File out_stdout = stdout()
  }
}