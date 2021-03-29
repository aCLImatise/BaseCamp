version 1.0

task SrfExtractLinear {
  input {
    String extract_linear_srf
    String archive_name
    String trace_name
  }
  command <<<
    srf_extract_linear \
      ~{extract_linear_srf} \
      ~{archive_name} \
      ~{trace_name}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    extract_linear_srf: ""
    archive_name: ""
    trace_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}