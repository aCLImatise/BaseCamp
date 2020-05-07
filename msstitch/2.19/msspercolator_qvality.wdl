version 1.0

task MsspercolatorQvality {
  input {
    String iI
    String dD
    String oO
    String decoyDecoyFn
    String featFeatType
    Array[String]+ qQOptions
  }
  command <<<
    msspercolator qvality \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(decoyDecoyFn) then ("--decoyfn " +  '"' + decoyDecoyFn + '"') else ""} \
      ~{if defined(featFeatType) then ("--feattype " +  '"' + featFeatType + '"') else ""} \
      ~{if defined(qQOptions) then ("--qoptions " +  '"' + qQOptions + '"') else ""}
  >>>
}