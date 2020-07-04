version 1.0

task Wftopfa {
  input {
    Boolean? dict
  }
  command <<<
    wftopfa \
      ~{true="--dict" false="" dict}
  >>>
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:80/200(L)--   --dict:26/100(L)--"
  }
}