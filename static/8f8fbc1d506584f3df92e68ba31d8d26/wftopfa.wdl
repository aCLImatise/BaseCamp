version 1.0

task Wftopfa {
  input {
    Boolean? dict
  }
  command <<<
    wftopfa \
      ~{if (dict) then "--dict" else ""}
  >>>
  parameter_meta {
    dict: ":1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:80/200(L)--   --dict:26/100(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}