version 1.0

task MasurcaCelerapm {
  command <<<
    MasurcaCelera_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}