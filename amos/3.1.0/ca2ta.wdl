version 1.0

task Ca2ta {
  input {
    Boolean checkCheck
    Boolean minMinSeq
    String oO
    Boolean filterFilter
    Boolean noNoQual
    Boolean matesMates
  }
  command <<<
    ca2ta \
      ~{true="-check" false="" checkCheck} \
      ~{true="-minseq" false="" minMinSeq} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-noqual" false="" noNoQual} \
      ~{true="-mates" false="" matesMates}
  >>>
}