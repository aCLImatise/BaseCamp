version 1.0

task ParseHeaderspyHeaders {
  input {
    String parse_headers_do_tpy
  }
  command <<<
    ParseHeaders_py headers \
      ~{parse_headers_do_tpy}
  >>>
  parameter_meta {
    parse_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}