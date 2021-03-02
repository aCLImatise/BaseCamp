version 1.0

task Avro {
  command <<<
    avro
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}