version 1.0

task Pdf2ps {
  input {
    Int? d_ascii_eight_five_encode_pages
  }
  command <<<
    pdf2ps \
      ~{if defined(d_ascii_eight_five_encode_pages) then ("-dASCII85EncodePages " +  '"' + d_ascii_eight_five_encode_pages + '"') else ""}
  >>>
  parameter_meta {
    d_ascii_eight_five_encode_pages: ""
  }
  output {
    File out_stdout = stdout()
  }
}