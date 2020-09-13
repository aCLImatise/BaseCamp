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
  parameter_meta {
    extract_linear_srf: ""
    archive_name: ""
    trace_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}