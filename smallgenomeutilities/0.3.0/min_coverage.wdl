version 1.0

task MinCoverage {
  input {
    String tT
    String iI
  }
  command <<<
    min_coverage \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}