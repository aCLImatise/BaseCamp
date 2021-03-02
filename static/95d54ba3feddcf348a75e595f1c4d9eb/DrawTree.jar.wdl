version 1.0

task DrawTreejar {
  command <<<
    DrawTree_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}