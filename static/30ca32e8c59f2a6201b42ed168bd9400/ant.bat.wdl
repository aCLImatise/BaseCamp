version 1.0

task Antbat {
  command <<<
    ant_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}