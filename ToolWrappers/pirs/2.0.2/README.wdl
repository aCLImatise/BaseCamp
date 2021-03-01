version 1.0

task README {
  command <<<
    README
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}