version 1.0

task Fastaannotatecdna {
  command <<<
    fastaannotatecdna
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}