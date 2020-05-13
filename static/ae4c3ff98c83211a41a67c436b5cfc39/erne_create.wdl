version 1.0

task ErneCreate {
  input {
    String fastFastA
    String outputOutputPrefix
    Boolean methylMethylHash
    String kK
    String blBl
    String oO
  }
  command <<<
    erne-create \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--methyl-hash" false="" methylMethylHash} \
      ~{if defined(kK) then ("--k " +  '"' + kK + '"') else ""} \
      ~{if defined(blBl) then ("--bl " +  '"' + blBl + '"') else ""} \
      ~{if defined(oO) then ("--o " +  '"' + oO + '"') else ""}
  >>>
}