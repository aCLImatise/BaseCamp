version 1.0

task MsslookupTrypsinize {
  input {
    String iI
    String dbfileDbfile
    String oO
    String miscMiscLeav
    Int minMinLen
    Boolean cutCutProline
  }
  command <<<
    msslookup trypsinize \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(miscMiscLeav) then ("--miscleav " +  '"' + miscMiscLeav + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""} \
      ~{true="--cutproline" false="" cutCutProline}
  >>>
}