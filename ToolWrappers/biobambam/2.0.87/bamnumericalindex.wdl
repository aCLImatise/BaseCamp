version 1.0

task Bamnumericalindex {
  command <<<
    bamnumericalindex
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}