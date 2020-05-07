version 1.0

task FilterImportantFactors.py {
  input {
    File inIn
    String filterFilter
    File oO
  }
  command <<<
    filter_important_factors.py \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}