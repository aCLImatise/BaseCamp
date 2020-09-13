version 1.0

task Pdf2dsc {
  input {
    Boolean? dict
    String pdf_file
  }
  command <<<
    pdf2dsc \
      ~{pdf_file} \
      ~{if (dict) then "--dict" else ""}
  >>>
  parameter_meta {
    dict: ":1193/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--"
    pdf_file: "()   (r)"
  }
  output {
    File out_stdout = stdout()
  }
}