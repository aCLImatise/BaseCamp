version 1.0

task Genotyper {
  input {
    Boolean oO
    Boolean zZ
    Boolean bB
    Boolean wW
    Boolean dD
    Boolean mM
    Boolean pP
    Boolean iI
    Boolean sS
    String minMinGq
    String minMinPhysCov
    String gqGqPresent
    Boolean omitOmitAbsent
    Boolean dontDontPrioritize
    String maxMaxOutputLength
  }
  command <<<
    genotyper \
      ~{true="-O" false="" oO} \
      ~{true="-Z" false="" zZ} \
      ~{true="-b" false="" bB} \
      ~{true="-w" false="" wW} \
      ~{true="-d" false="" dD} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-I" false="" iI} \
      ~{true="-S" false="" sS} \
      ~{if defined(minMinGq) then ("--min_gq " +  '"' + minMinGq + '"') else ""} \
      ~{if defined(minMinPhysCov) then ("--min_phys_cov " +  '"' + minMinPhysCov + '"') else ""} \
      ~{if defined(gqGqPresent) then ("--gq-present " +  '"' + gqGqPresent + '"') else ""} \
      ~{true="--omit-absent" false="" omitOmitAbsent} \
      ~{true="--dont-prioritize" false="" dontDontPrioritize} \
      ~{if defined(maxMaxOutputLength) then ("--max-output-length " +  '"' + maxMaxOutputLength + '"') else ""}
  >>>
}