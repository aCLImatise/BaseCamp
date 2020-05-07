version 1.0

task BwaPemerge {
  input {
    Boolean mM
    Boolean uU
    Int tT
    Int tT
    Int qQ
    String? readRead1fq
    String? readRead2fq
  }
  command <<<
    bwa pemerge \
      ~{readRead1fq} \
      ~{true="-m" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{readRead2fq}
  >>>
}