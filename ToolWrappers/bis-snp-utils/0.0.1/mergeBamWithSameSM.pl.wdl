version 1.0

task MergeBamWithSameSMpl {
  command <<<
    mergeBamWithSameSM_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}