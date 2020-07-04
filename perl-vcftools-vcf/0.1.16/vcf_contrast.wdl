version 1.0

task VcfContrast {
  input {
    Int? min_dp
    Boolean? apply_filters
    Boolean? novel_sites
  }
  command <<<
    vcf-contrast \
      ~{if defined(min_dp) then ("--min-DP " +  '"' + min_dp + '"') else ""} \
      ~{true="--apply-filters" false="" apply_filters} \
      ~{true="--novel-sites" false="" novel_sites}
  >>>
  parameter_meta {
    min_dp: "Minimum depth across all -<list> samples"
    apply_filters: "Skip sites with FILTER column different from PASS or \".\""
    novel_sites: "Print only records with novel genotypes"
  }
}