version 1.0

task ParseHeaderspyHeaders {
  input {
    String parse_headers_do_tpy
  }
  command <<<
    ParseHeaders_py headers \
      ~{parse_headers_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    parse_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}