version 1.0

task SeqtkComp {
  input {
    Boolean? u
    String? r
    String in_dot_fa
  }
  command <<<
    seqtk comp \
      ~{in_dot_fa} \
      ~{true="-u" false="" u} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    u: ""
    r: ""
    in_dot_fa: ""
  }
}