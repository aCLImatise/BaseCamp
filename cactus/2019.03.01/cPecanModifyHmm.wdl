version 1.0

task CPecanModifyHmm {
  command <<<
    cPecanModifyHmm
  >>>
  output {
    File out_stdout = stdout()
  }
}