version 1.0

task Lighter {
  input {
    String rR
    String kK
    String kK
    String odOd
    String tT
    Int maxMaxCor
    Boolean trimTrim
    Boolean discardDiscard
    Boolean noNoQual
    String newNewQual
    File saveSaveTrustedKmErs
    File loadLoadTrustedKmErs
    String zlibZlib
    Boolean vV
  }
  command <<<
    lighter \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(odOd) then ("-od " +  '"' + odOd + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(maxMaxCor) then ("-maxcor " +  '"' + maxMaxCor + '"') else ""} \
      ~{true="-trim" false="" trimTrim} \
      ~{true="-discard" false="" discardDiscard} \
      ~{true="-noQual" false="" noNoQual} \
      ~{if defined(newNewQual) then ("-newQual " +  '"' + newNewQual + '"') else ""} \
      ~{if defined(saveSaveTrustedKmErs) then ("-saveTrustedKmers " +  '"' + saveSaveTrustedKmErs + '"') else ""} \
      ~{if defined(loadLoadTrustedKmErs) then ("-loadTrustedKmers " +  '"' + loadLoadTrustedKmErs + '"') else ""} \
      ~{if defined(zlibZlib) then ("-zlib " +  '"' + zlibZlib + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}