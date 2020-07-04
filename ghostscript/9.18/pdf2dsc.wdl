version 1.0

task Pdf2dsc {
  input {
    Boolean? dict
    String pdf_file
  }
  command <<<
    pdf2dsc \
      ~{pdf_file} \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1193/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--"
    pdf_file: "()   (r)"
  }
}