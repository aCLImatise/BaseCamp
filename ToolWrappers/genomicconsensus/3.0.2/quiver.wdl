version 1.0

task Quiver {
  command <<<
    quiver
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}