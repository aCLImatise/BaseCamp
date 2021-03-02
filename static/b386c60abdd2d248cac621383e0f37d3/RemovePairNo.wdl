version 1.0

task RemovePairNo {
  command <<<
    RemovePairNo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}