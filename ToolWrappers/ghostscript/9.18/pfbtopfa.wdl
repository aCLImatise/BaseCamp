version 1.0

task Pfbtopfa {
  input {
    Boolean? nostringval
    Boolean? dict
  }
  command <<<
    pfbtopfa \
      ~{if (nostringval) then "--nostringval--" else ""} \
      ~{if (dict) then "--dict" else ""}
  >>>
  parameter_meta {
    nostringval: ""
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:84/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}