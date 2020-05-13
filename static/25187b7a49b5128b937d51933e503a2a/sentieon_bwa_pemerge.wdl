version 1.0

task SentieonBwaPemerge {
  input {
    Boolean mM
    Boolean uU
    Int tT
    Int tT
    Int qQ
    String? bwaBwa
    String? pPEmerge
    String? readRead1fq
    String? readRead2fq
  }
  command <<<
    sentieon-bwa pemerge \
      ~{bwaBwa} \
      ~{true="-m" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""} \
      ~{pPEmerge} \
      ~{readRead1fq} \
      ~{readRead2fq}
  >>>
}