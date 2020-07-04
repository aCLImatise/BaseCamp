version 1.0

task FaToFastq {
  input {
    String? qual
    String in_dot_fa
    String out_dot_fast_q
  }
  command <<<
    faToFastq \
      ~{in_dot_fa} \
      ~{out_dot_fast_q} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""}
  >>>
  parameter_meta {
    qual: "quality letter to use.  Default is '<' which is good I think...."
    in_dot_fa: ""
    out_dot_fast_q: ""
  }
}