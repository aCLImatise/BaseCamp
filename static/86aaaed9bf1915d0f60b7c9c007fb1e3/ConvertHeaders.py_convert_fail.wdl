version 1.0

task ConvertHeaderspyConvertfail {
  input {
    String convert_headers_do_tpy
  }
  command <<<
    ConvertHeaders_py convert_fail \
      ~{convert_headers_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}