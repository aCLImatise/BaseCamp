version 1.0

task Ncbisort {
  input {
    Boolean? cmu
    Boolean? tc
    File? o
    String? t
  }
  command <<<
    ncbisort \
      ~{true="-cmu" false="" cmu} \
      ~{true="-tc" false="" tc} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(t) then ("-T " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    cmu: ""
    tc: ""
    o: ""
    t: ""
  }
}