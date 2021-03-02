version 1.0

task Flock1 {
  command <<<
    flock1
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}