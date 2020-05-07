version 1.0

task MsspercolatorMerge {
  input {
    Array[String]+ iI
    String dD
    String oO
  }
  command <<<
    msspercolator merge \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}