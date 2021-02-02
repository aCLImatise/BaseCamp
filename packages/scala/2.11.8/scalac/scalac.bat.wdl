version 1.0

task Scalacbat {
  command <<<
    scalac_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}