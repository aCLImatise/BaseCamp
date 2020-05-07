version 1.0

task BamCountReads.py {
  input {
    Int aA
    String fF
    String zZ
    String kK
    Boolean gG
    String pP
    String tT
    Boolean qQ
    Boolean rR
    String fF
    String? bamBam
  }
  command <<<
    bam_count_reads.py \
      ~{bamBam} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-Q" false="" qQ} \
      ~{true="-R" false="" rR} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""}
  >>>
}