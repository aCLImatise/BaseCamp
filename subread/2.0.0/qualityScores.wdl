version 1.0

task QualityScores {
  input {
    String iI
    String oO
    Boolean phredPhredOffset
  }
  command <<<
    qualityScores \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--phred-offset" false="" phredPhredOffset}
  >>>
}