version 1.0

task Pfbtopfa {
  input {
    Boolean? dict
  }
  command <<<
    pfbtopfa \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:83/200(L)--"
  }
}