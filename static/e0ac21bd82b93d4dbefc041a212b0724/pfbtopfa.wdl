version 1.0

task Pfbtopfa {
  input {
    Boolean? dict
  }
  command <<<
    pfbtopfa \
      ~{if (dict) then "--dict" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:84/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}