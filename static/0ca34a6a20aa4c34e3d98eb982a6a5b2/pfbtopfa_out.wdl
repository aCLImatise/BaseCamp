version 1.0

task PfbtopfaOut {
  input {
    Boolean? dict
  }
  command <<<
    pfbtopfa out \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--"
  }
}