version 1.0

task BamAlignmentsCompare.py {
  input {
    String wW
    Boolean gG
    String rR
    String pP
    String tT
    String fF
    Boolean qQ
    String? bamBamOne
    String? bamBamTwo
  }
  command <<<
    bam_alignments_compare.py \
      ~{bamBamOne} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-Q" false="" qQ} \
      ~{bamBamTwo}
  >>>
}