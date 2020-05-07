version 1.0

task BamGcVsQual.py {
  input {
    String fF
    String qQ
    String rR
    String tT
    Boolean qQ
    String? bamBam
  }
  command <<<
    bam_gc_vs_qual.py \
      ~{bamBam} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-Q" false="" qQ}
  >>>
}