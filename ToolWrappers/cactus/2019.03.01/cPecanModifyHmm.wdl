version 1.0

task CPecanModifyHmm {
  command <<<
    cPecanModifyHmm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}