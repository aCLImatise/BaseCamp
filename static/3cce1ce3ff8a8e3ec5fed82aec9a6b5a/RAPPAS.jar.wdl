version 1.0

task RAPPASjar {
  command <<<
    RAPPAS_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}