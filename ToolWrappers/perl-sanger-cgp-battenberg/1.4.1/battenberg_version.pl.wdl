version 1.0

task BattenbergVersionpl {
  command <<<
    battenberg_version_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}