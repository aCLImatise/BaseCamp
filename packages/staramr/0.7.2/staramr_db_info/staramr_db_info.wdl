version 1.0

task StaramrDbInfo {
  input {
    Boolean? v
    Boolean? verbose
    String star_amr
  }
  command <<<
    staramr db info \
      ~{star_amr} \
      ~{if (v) then "-V" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staramr:0.7.2--py_0"
  }
  parameter_meta {
    v: ""
    verbose: ""
    star_amr: ""
  }
  output {
    File out_stdout = stdout()
  }
}