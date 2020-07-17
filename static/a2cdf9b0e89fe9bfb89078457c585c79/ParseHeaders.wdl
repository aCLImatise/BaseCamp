version 1.0

task ParseHeaders.pyHeaders {
  input {
    String parse_headers_do_tpy
  }
  command <<<
    ParseHeaders.py headers \
      ~{parse_headers_do_tpy}
  >>>
  parameter_meta {
    parse_headers_do_tpy: ""
  }
}