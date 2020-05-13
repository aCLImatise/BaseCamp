version 1.0

task Mccortex95Calls2vcf {
  input {
    String matchMatch
    String mismatchMismatch
    String gapGapOpen
    String gapGapExtend
  }
  command <<<
    mccortex95 calls2vcf \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gap-extend " +  '"' + gapGapExtend + '"') else ""}
  >>>
}