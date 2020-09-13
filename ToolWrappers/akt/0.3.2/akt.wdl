version 1.0

task Akt {
  command <<<
    akt
  >>>
  output {
    File out_stdout = stdout()
  }
}