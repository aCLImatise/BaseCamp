version 1.0

task ClipedgeOUTPUT {
  input {
    String? r
    String clip_edge
    String var_input
    String var_output
  }
  command <<<
    clipedge OUTPUT \
      ~{clip_edge} \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    clip_edge: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}