version 1.0

task FaFilterN {
  input {
    String? out
    String? uniq
    String in_dot_fa
    String out_dot_fa
  }
  command <<<
    faFilterN \
      ~{in_dot_fa} \
      ~{out_dot_fa} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(uniq) then ("-uniq " +  '"' + uniq + '"') else ""}
  >>>
  parameter_meta {
    out: ""
    uniq: ""
    in_dot_fa: ""
    out_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}