version 1.0

task Fscbat {
  command <<<
    fsc_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}