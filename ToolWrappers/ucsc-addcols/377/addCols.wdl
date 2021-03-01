version 1.0

task AddCols {
  command <<<
    addCols
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}