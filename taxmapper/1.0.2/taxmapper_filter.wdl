version 1.0

task TaxmapperFilter {
  input {
    File? tax
    File? out
    Float? auto
    String? identity
    Int? identity_ratio
    String? evalue
    Int? evalue_diff
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
    tax: "Taxonomy mapping file (taxa.tsv if not specified\\notherwise)."
    out: "Output file [default: taxa_filtered.tsv]"
    auto: "Automatic filter with probability threshold, if\\nautomatic filter is chosen all other thresholds will\\nbe ignored [nan or 0 - 1, default: 0.4]"
    identity: "Threshold for identity of best hit [default: nan]"
    identity_ratio: "Threshold for identity ratio [1 - 10, default: nan]"
    evalue: "Threshold for log e-values of best hit [default: nan]"
    evalue_diff: "Threshold for absolute difference in e-values [0 -\\n100, default: nan]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}