version 1.0

task IgdiscoverClonoquery {
  input {
    Int? minimum_count
    Int? cdr_three_core
    Int? mismatches
    Boolean? aa
    File? summary
    String ref_table
    String query_table
  }
  command <<<
    igdiscover clonoquery \
      ~{ref_table} \
      ~{query_table} \
      ~{if defined(minimum_count) then ("--minimum-count " +  '"' + minimum_count + '"') else ""} \
      ~{if defined(cdr_three_core) then ("--cdr3-core " +  '"' + cdr_three_core + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if (aa) then "--aa" else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""}
  >>>
  parameter_meta {
    minimum_count: "Discard all rows with count less than N. Default: 1"
    cdr_three_core: ":END\\nSTART:END defines the non-junction region of CDR3\\nsequences. Use negative numbers for END to count from\\nthe end. Regions before and after are considered to be\\njunction sequence, and for two CDR3s to be considered\\nsimilar, at least one of the junctions must be\\nidentical. Default: no junction region."
    mismatches: "No. of allowed mismatches between CDR3 sequences. Can\\nalso be a fraction between 0 and 1 (such as 0.15),\\ninterpreted relative to the length of the CDR3 (minus\\nthe front non-core). Default: 1"
    aa: "Count CDR3 mismatches on amino-acid level. Default:\\nCompare nucleotides."
    summary: "Write summary table to FILE"
    ref_table: "Reference table with parsed and filtered IgBLAST\\nresults (filtered.tab)"
    query_table: "Query table with IgBLAST results (assigned.tab or\\nfiltered.tab)"
  }
  output {
    File out_stdout = stdout()
  }
}