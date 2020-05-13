version 1.0

task MarkRepeatUnique {
  input {
    String gG
    String tT
    String eE
    String iI
    String jJ
    String kK
    String spanSpan
    String lowLowCov
    String readsReads
    String longLong
    String shortShort
    String oO
    Boolean nN
  }
  command <<<
    markRepeatUnique \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(spanSpan) then ("-span " +  '"' + spanSpan + '"') else ""} \
      ~{if defined(lowLowCov) then ("-lowcov " +  '"' + lowLowCov + '"') else ""} \
      ~{if defined(readsReads) then ("-reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(longLong) then ("-long " +  '"' + longLong + '"') else ""} \
      ~{if defined(shortShort) then ("-short " +  '"' + shortShort + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-n" false="" nN}
  >>>
}