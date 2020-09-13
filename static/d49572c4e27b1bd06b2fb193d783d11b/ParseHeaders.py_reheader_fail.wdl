version 1.0

task ParseHeaderspyReheaderfail {
  input {
    String parse_headers_do_tpy
  }
  command <<<
    ParseHeaders_py reheader_fail \
      ~{parse_headers_do_tpy}
  >>>
  parameter_meta {
    parse_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}