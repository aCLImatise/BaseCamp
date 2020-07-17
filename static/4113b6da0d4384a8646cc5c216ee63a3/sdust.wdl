version 1.0

task Sdust {
  input {
    String? w
    String? t
    String in_dot_fa
  }
  command <<<
    sdust \
      ~{in_dot_fa} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    w: ""
    t: ""
    in_dot_fa: ""
  }
}