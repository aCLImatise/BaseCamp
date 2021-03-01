version 1.0

task Iris {
  command <<<
    iris
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}