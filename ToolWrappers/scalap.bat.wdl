version 1.0

task Scalapbat {
  command <<<
    scalap_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}