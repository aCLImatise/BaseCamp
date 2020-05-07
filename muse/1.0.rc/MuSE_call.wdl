version 1.0

task MuSECall {
  input {
    File fF
    String rR
    File lL
    String oO
    String? tumorTumorBam
    String? matchedMatchedNormalBam
  }
  command <<<
    MuSE call \
      ~{tumorTumorBam} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{matchedMatchedNormalBam}
  >>>
}