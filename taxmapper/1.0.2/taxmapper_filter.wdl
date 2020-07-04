version 1.0

task TaxmapperFilter {
  input {
    String? tax
    String? out
    String? auto
    String? identity
    String? identity_ratio
    String? evalue
    String? evalue_diff
  }
  command <<<
    taxmapper filter \
      ~{if defined(tax) then ("--tax " +  '"' + tax + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(auto) then ("--auto " +  '"' + auto + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(identity_ratio) then ("--identity-ratio " +  '"' + identity_ratio + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(evalue_diff) then ("--evalue-diff " +  '"' + evalue_diff + '"') else ""}
  >>>
  parameter_meta {
    tax: "Taxonomy mapping file (taxa.tsv if not specified otherwise)."
    out: "Output file [default: taxa_filtered.tsv]"
    auto: "Automatic filter with probability threshold, if automatic filter is chosen all other thresholds will be ignored [nan or 0 - 1, default: 0.4]"
    identity: "Threshold for identity of best hit [default: nan]"
    identity_ratio: "Threshold for identity ratio [1 - 10, default: nan]"
    evalue: "Threshold for log e-values of best hit [default: nan]"
    evalue_diff: "Threshold for absolute difference in e-values [0 - 100, default: nan]"
  }
}