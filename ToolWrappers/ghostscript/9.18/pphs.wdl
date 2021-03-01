version 1.0

task Pphs {
  input {
    Boolean? dict
  }
  command <<<
    pphs \
      ~{if (dict) then "--dict" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:93/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}