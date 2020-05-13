version 1.0

task UniqueFilter {
  input {
    String iI
    String oO
  }
  command <<<
    uniqueFilter \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}