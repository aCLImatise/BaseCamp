version 1.0

task Ps2ps2Input.ps {
  input {
    Boolean? dict
  }
  command <<<
    ps2ps2 input.ps \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1191/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--"
  }
}