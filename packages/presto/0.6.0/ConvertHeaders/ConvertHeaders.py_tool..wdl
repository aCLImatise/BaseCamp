version 1.0

task ConvertHeaderspyTool {
  input {
    String convert_headers_do_tpy
  }
  command <<<
    ConvertHeaders_py tool_ \
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