version 1.0

task Ps2asciiSwitches {
  input {
    Boolean? dict
  }
  command <<<
    ps2ascii switches \
      ~{if (dict) then "--dict" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dict: ":1245/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}