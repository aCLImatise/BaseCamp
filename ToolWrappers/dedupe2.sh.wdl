version 1.0

task Dedupe2sh {
  command <<<
    dedupe2_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}