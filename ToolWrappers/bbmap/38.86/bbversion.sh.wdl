version 1.0

task Bbversionsh {
  command <<<
    bbversion_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}