version 1.0

task Fucompare {
  command <<<
    fu_compare
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}