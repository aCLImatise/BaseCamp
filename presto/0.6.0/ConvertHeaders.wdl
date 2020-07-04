version 1.0

task ConvertHeaders.pyConvertFail {
  input {
    String convert_headers_do_tpy
  }
  command <<<
    ConvertHeaders.py convert-fail \
      ~{convert_headers_do_tpy}
  >>>
  parameter_meta {
    convert_headers_do_tpy: ""
  }
}