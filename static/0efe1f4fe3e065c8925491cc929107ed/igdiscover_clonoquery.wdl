version 1.0

task IgdiscoverClonoquery {
  input {
    String minimumMinimumCount
    String cdr3Cdr3Core
    String mismatchesMismatches
    Boolean aaAa
    File summarySummary
    String? refRefTable
    String? queryQueryTable
  }
  command <<<
    igdiscover clonoquery \
      ~{refRefTable} \
      ~{if defined(minimumMinimumCount) then ("--minimum-count " +  '"' + minimumMinimumCount + '"') else ""} \
      ~{if defined(cdr3Cdr3Core) then ("--cdr3-core " +  '"' + cdr3Cdr3Core + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{true="--aa" false="" aaAa} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{queryQueryTable}
  >>>
}