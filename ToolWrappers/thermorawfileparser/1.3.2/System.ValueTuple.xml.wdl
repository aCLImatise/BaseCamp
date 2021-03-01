version 1.0

task SystemValueTuplexml {
  command <<<
    System_ValueTuple_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}