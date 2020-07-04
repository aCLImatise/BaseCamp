version 1.0

task Pphs {
  input {
    Boolean? dict
  }
  command <<<
    pphs \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:93/200(L)--"
  }
}