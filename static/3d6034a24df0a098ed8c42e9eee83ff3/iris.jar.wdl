version 1.0

task Irisjar {
  command <<<
    iris_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}