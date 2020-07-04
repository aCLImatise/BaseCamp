version 1.0

task Psl2sam.pl {
  input {
    String? a
    String? b
    String? q
    String? r
  }
  command <<<
    psl2sam.pl \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    b: ""
    q: ""
    r: ""
  }
}