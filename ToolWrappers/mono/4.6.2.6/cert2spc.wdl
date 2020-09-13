version 1.0

task Cert2spc {
  input {
    String? certificate_vertical_line_crl
  }
  command <<<
    cert2spc \
      ~{certificate_vertical_line_crl}
  >>>
  parameter_meta {
    certificate_vertical_line_crl: ""
  }
  output {
    File out_stdout = stdout()
  }
}