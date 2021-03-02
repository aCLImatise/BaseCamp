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
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    convert_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}