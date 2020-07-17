version 1.0

task Asn2xml {
  input {
    Boolean? log_errors_file
  }
  command <<<
    asn2xml \
      ~{true="-l" false="" log_errors_file}
  >>>
  parameter_meta {
    log_errors_file: "Log errors to file named: [File Out]  Optional"
  }
}