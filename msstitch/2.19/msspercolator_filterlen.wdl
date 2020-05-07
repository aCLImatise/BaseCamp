version 1.0

task MsspercolatorFilterlen {
  input {
    String iI
    String dD
    String oO
    Int maxlenMaxlen
    Int minMinLen
  }
  command <<<
    msspercolator filterlen \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(maxlenMaxlen) then ("--maxlen " +  '"' + maxlenMaxlen + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""}
  >>>
}