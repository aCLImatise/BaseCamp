version 1.0

task MinorityFreq {
  input {
    Int startStart
    Int endEnd
    File configConfig
    Int cC
    String nN
    Int tT
    Boolean freqsFreqs
    Boolean dD
    File oO
    String rR
    String? bamBam
  }
  command <<<
    minority_freq \
      ~{bamBam} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--freqs" false="" freqsFreqs} \
      ~{true="-d" false="" dD} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}