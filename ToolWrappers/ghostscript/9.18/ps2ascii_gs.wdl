version 1.0

task Ps2asciiGs {
  input {
    Boolean? dict
  }
  command <<<
    ps2ascii gs \
      ~{if (dict) then "--dict" else ""}
  >>>
  parameter_meta {
    dict: ":1245/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}