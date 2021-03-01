version 1.0

task Ray {
  command <<<
    Ray
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}