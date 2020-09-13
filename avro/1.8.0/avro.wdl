version 1.0

task Avro {
  command <<<
    avro
  >>>
  output {
    File out_stdout = stdout()
  }
}