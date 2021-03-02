version 1.0

task ParseHeaderspyReheaderpass {
  input {
    String parse_headers_do_tpy
  }
  command <<<
    ParseHeaders_py reheader_pass \
      ~{parse_headers_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parse_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}