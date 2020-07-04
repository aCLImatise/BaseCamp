version 1.0

task Ps2pdfwrOptions... {
  input {
    Boolean? dict
  }
  command <<<
    ps2pdfwr options... \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1191/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--"
  }
}