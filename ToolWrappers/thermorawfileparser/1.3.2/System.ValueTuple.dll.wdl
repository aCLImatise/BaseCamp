version 1.0

task SystemValueTupledll {
  command <<<
    System_ValueTuple_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}