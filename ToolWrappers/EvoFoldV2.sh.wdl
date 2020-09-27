version 1.0

task EvoFoldV2sh {
  command <<<
    EvoFoldV2_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}