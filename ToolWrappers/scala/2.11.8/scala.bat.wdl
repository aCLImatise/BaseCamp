version 1.0

task Scalabat {
  command <<<
    scala_bat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}