version 1.0

task SystemValueTuplexml {
  command <<<
    System_ValueTuple_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}