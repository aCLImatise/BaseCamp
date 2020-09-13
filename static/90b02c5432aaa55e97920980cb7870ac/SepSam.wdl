version 1.0

task SepSam {
  command <<<
    SepSam
  >>>
  output {
    File out_stdout = stdout()
  }
}