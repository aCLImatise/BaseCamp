version 1.0

task Ps2asciiFile2ps {
  input {
    Boolean? nostringval
    Boolean? dict
  }
  command <<<
    ps2ascii file2_ps \
      ~{if (nostringval) then "--nostringval--" else ""} \
      ~{if (dict) then "--dict" else ""}
  >>>
  parameter_meta {
    nostringval: ""
    dict: ":1245/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--"
  }
  output {
    File out_stdout = stdout()
  }
}