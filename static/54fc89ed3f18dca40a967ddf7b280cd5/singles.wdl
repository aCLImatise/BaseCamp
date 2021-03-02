version 1.0

task Singles {
  command <<<
    singles
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}