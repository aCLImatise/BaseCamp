version 1.0

task MsspercolatorFilteruni {
  input {
    String iI
    String dD
    String oO
    String scoreScore
  }
  command <<<
    msspercolator filteruni \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""}
  >>>
}