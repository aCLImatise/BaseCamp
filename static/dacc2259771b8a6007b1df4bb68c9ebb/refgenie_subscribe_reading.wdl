version 1.0

task RefgenieSubscribeReading {
  input {
    Array[String] s
    Boolean? r
    Boolean? skip_read_lock
    String? c
    String ref_genie
    String subscribe
  }
  command <<<
    refgenie subscribe reading \
      ~{ref_genie} \
      ~{subscribe} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (r) then "-r" else ""} \
      ~{if (skip_read_lock) then "--skip-read-lock" else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/refgenie:0.10.0--py_0"
  }
  parameter_meta {
    s: ""
    r: ""
    skip_read_lock: ""
    c: ""
    ref_genie: ""
    subscribe: ""
  }
  output {
    File out_stdout = stdout()
  }
}