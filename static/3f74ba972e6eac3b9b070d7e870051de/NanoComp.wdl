version 1.0

task NanoComp {
  input {
    Boolean? v
    String? t
    String? o
    String? p
    Boolean? verbose
  }
  command <<<
    NanoComp \
      ~{true="-v" false="" v} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    v: ""
    t: ""
    o: ""
    p: ""
    verbose: ""
  }
}