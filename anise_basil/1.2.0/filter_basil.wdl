version 1.0

task FilterBasil.py {
  input {
    String iI
    String oO
    Int minMinOeaEachSide
    Int minMinOeaOneSide
    Int minMinOeaSum
    Int minMinClippingEachSide
    Int minMinClippingSum
    Int minMinGScore
  }
  command <<<
    filter_basil.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(minMinOeaEachSide) then ("--min-oea-each-side " +  '"' + minMinOeaEachSide + '"') else ""} \
      ~{if defined(minMinOeaOneSide) then ("--min-oea-one-side " +  '"' + minMinOeaOneSide + '"') else ""} \
      ~{if defined(minMinOeaSum) then ("--min-oea-sum " +  '"' + minMinOeaSum + '"') else ""} \
      ~{if defined(minMinClippingEachSide) then ("--min-clipping-each-side " +  '"' + minMinClippingEachSide + '"') else ""} \
      ~{if defined(minMinClippingSum) then ("--min-clipping-sum " +  '"' + minMinClippingSum + '"') else ""} \
      ~{if defined(minMinGScore) then ("--min-gscore " +  '"' + minMinGScore + '"') else ""}
  >>>
}