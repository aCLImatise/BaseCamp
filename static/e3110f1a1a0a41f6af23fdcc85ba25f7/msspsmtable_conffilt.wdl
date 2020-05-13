version 1.0

task MsspsmtableConffilt {
  input {
    String iI
    String dD
    String oO
    String confidenceConfidenceCol
    String confConfColPattern
    String confidenceConfidenceLvl
    String confidenceConfidenceBetter
    Boolean unrollUnroll
  }
  command <<<
    msspsmtable conffilt \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(confidenceConfidenceCol) then ("--confidence-col " +  '"' + confidenceConfidenceCol + '"') else ""} \
      ~{if defined(confConfColPattern) then ("--confcolpattern " +  '"' + confConfColPattern + '"') else ""} \
      ~{if defined(confidenceConfidenceLvl) then ("--confidence-lvl " +  '"' + confidenceConfidenceLvl + '"') else ""} \
      ~{if defined(confidenceConfidenceBetter) then ("--confidence-better " +  '"' + confidenceConfidenceBetter + '"') else ""} \
      ~{true="--unroll" false="" unrollUnroll}
  >>>
}