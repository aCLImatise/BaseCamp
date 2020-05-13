version 1.0

task CovesSE {
  input {
    Boolean aA
    String gG
    Boolean mM
    Boolean sS
    String? covesCoves
    String? cmCmFile
    String? seqSeqFile
  }
  command <<<
    coves-SE \
      ~{covesCoves} \
      ~{true="-a" false="" aA} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{cmCmFile} \
      ~{seqSeqFile}
  >>>
}