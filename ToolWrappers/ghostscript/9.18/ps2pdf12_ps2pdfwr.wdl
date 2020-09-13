version 1.0

task Ps2pdf12Ps2pdfwr {
  input {
    Boolean? dict
  }
  command <<<
    ps2pdf12 ps2pdfwr \
      ~{if (dict) then "--dict" else ""}
  >>>
  parameter_meta {
    dict: ":1192/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}