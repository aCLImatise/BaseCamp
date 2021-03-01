version 1.0

task Rism1d {
  command <<<
    rism1d
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}