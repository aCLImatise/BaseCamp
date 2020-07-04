version 1.0

task NgsDisambiguate {
  input {
    Boolean? d
    String? s
    String? o
    String? a
    String ngs_disambiguate
  }
  command <<<
    ngs_disambiguate \
      ~{ngs_disambiguate} \
      ~{true="-d" false="" d} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    s: ""
    o: ""
    a: ""
    ngs_disambiguate: "[-d] -s <string> -o <string> [-a <string>] [--] [--version] [-h] <A> <B>"
  }
}