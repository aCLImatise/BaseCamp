version 1.0

task Ps2pdf13Options... {
  input {
    Boolean? dict
  }
  command <<<
    ps2pdf13 options... \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1192/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--"
  }
}