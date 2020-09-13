version 1.0

task Ipa {
  command <<<
    ipa
  >>>
  output {
    File out_stdout = stdout()
  }
}