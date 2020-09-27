version 1.0

task MergeBamWithSameSMpl {
  command <<<
    mergeBamWithSameSM_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}