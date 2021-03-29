version 1.0

task SrfExtractHash {
  input {
    Boolean? c
    Boolean? fast_q
    String trace_name
  }
  command <<<
    srf_extract_hash \
      ~{trace_name} \
      ~{if (c) then "-c" else ""} \
      ~{if (fast_q) then "-fastq" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    c: ""
    fast_q: ""
    trace_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}