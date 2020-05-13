version 1.0

task Frg2ta {
  input {
    Boolean checkCheck
    Boolean minMinSeq
    String oO
    Boolean filterFilter
    Boolean noNoQual
    Boolean qualiQualiDx
    Boolean matesMates
    Boolean noNoNames
    Boolean vV
  }
  command <<<
    frg2ta \
      ~{true="-check" false="" checkCheck} \
      ~{true="-minseq" false="" minMinSeq} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-filter" false="" filterFilter} \
      ~{true="-noqual" false="" noNoQual} \
      ~{true="-qualidx" false="" qualiQualiDx} \
      ~{true="-mates" false="" matesMates} \
      ~{true="-nonames" false="" noNoNames} \
      ~{true="-V" false="" vV}
  >>>
}