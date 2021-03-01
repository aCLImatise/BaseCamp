version 1.0

task Roi {
  command <<<
    roi
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}