version 1.0

task MsspercolatorReassign {
  input {
    String iI
    String dD
    String oO
    String qvQvAlity
    String featFeatType
  }
  command <<<
    msspercolator reassign \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(qvQvAlity) then ("--qvality " +  '"' + qvQvAlity + '"') else ""} \
      ~{if defined(featFeatType) then ("--feattype " +  '"' + featFeatType + '"') else ""}
  >>>
}