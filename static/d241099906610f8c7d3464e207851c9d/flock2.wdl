version 1.0

task Flock2 {
  command <<<
    flock2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}