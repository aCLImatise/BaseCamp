version 1.0

task SepSam {
  command <<<
    SepSam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}