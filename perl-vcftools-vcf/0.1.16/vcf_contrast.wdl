version 1.0

task VcfContrast {
  input {
    Int minMinDp
    Boolean applyApplyFilters
    Boolean novelNovelSites
  }
  command <<<
    vcf-contrast \
      ~{if defined(minMinDp) then ("--min-DP " +  '"' + minMinDp + '"') else ""} \
      ~{true="--apply-filters" false="" applyApplyFilters} \
      ~{true="--novel-sites" false="" novelNovelSites}
  >>>
}