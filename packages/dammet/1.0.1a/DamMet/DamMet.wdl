version 1.0

task DamMet {
  command <<<
    DamMet
  >>>
  output {
    File out_stdout = stdout()
  }
}