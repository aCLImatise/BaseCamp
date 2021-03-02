version 1.0

task Faketime {
  input {
    Boolean? use_multithreaded_version
    Boolean? use_advanced_format
    Boolean? exclude_monotonic
    String? switches
    String timestamp
    String program_with_arguments
  }
  command <<<
    faketime \
      ~{switches} \
      ~{timestamp} \
      ~{program_with_arguments} \
      ~{if (use_multithreaded_version) then "-m" else ""} \
      ~{if (use_advanced_format) then "-f" else ""} \
      ~{if (exclude_monotonic) then "--exclude-monotonic" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tbl2asn-forever:25.7.2f--h516909a_0"
  }
  parameter_meta {
    use_multithreaded_version: ": Use the multi-threaded version of libfaketime"
    use_advanced_format: ": Use the advanced timestamp specification format (see manpage)"
    exclude_monotonic: ": Prevent monotonic clock from drifting (not the raw monotonic one)"
    switches: ""
    timestamp: ""
    program_with_arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}