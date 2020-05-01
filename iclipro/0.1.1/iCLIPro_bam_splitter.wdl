version 1.0

task ICLIProBamSplitter {
  input {
    Directory oO
    Int qQ
    String gG
    String? in1bamIn1bam
  }
  command <<<
    iCLIPro_bam_splitter \
      ~{in1bamIn1bam} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""}
  >>>
}