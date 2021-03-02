version 1.0

task Qhull {
  command <<<
    qhull
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}