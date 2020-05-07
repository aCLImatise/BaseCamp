version 1.0

task CollapseIsoformsBySam.py {
  input {
    String inputInput
    Boolean fqFq
    String samSam
    String prefixPrefix
    Int minMinCoverage
    Int minMinIdentity
    Int maxMaxFuzzyJunction
    Int maxMax5Diff
    Int maxMax3Diff
    String flFlNcCoverage
    Boolean dunDunMerge5Shorter
  }
  command <<<
    collapse_isoforms_by_sam.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--fq" false="" fqFq} \
      ~{if defined(samSam) then ("--sam " +  '"' + samSam + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(minMinCoverage) then ("--min-coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(maxMaxFuzzyJunction) then ("--max_fuzzy_junction " +  '"' + maxMaxFuzzyJunction + '"') else ""} \
      ~{if defined(maxMax5Diff) then ("--max_5_diff " +  '"' + maxMax5Diff + '"') else ""} \
      ~{if defined(maxMax3Diff) then ("--max_3_diff " +  '"' + maxMax3Diff + '"') else ""} \
      ~{if defined(flFlNcCoverage) then ("--flnc_coverage " +  '"' + flFlNcCoverage + '"') else ""} \
      ~{true="--dun-merge-5-shorter" false="" dunDunMerge5Shorter}
  >>>
}