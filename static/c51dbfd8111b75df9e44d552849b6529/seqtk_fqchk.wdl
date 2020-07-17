version 1.0

task SeqtkFqchk {
  input {
    String? q
    String in_dot_fq
  }
  command <<<
    seqtk fqchk \
      ~{in_dot_fq} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    in_dot_fq: ""
  }
}