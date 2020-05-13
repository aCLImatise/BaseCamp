version 1.0

task BlCoverage {
  input {
    String iI
    String oO
    String? coverageCoverage
  }
  command <<<
    bl-coverage \
      ~{coverageCoverage} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}