version 1.0

task VcfSubset {
  input {
    Boolean? trim_alt_alleles
    String? columns
    Boolean? exclude_ref
    Boolean? force
    Boolean? private
    Boolean? replace_with_ref
    String? type
    Boolean? keep_uncalled
    String in_dot_vcf_do_tgz
  }
  command <<<
    vcf-subset \
      ~{in_dot_vcf_do_tgz} \
      ~{true="--trim-alt-alleles" false="" trim_alt_alleles} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{true="--exclude-ref" false="" exclude_ref} \
      ~{true="--force" false="" force} \
      ~{true="--private" false="" private} \
      ~{true="--replace-with-ref" false="" replace_with_ref} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--keep-uncalled" false="" keep_uncalled}
  >>>
  parameter_meta {
    trim_alt_alleles: "Remove alternate alleles if not found in the subset"
    columns: "File or comma-separated list of columns to keep in the vcf file. If file, one column per row"
    exclude_ref: "Exclude rows not containing variants."
    force: "Proceed anyway even if VCF does not contain some of the samples."
    private: "Print only rows where only the subset columns carry an alternate allele."
    replace_with_ref: "Replace the excluded types with reference allele instead of dot."
    type: "Comma-separated list of variant types to include: ref,SNPs,indels,MNPs,other."
    keep_uncalled: "Do not exclude rows without calls."
    in_dot_vcf_do_tgz: ""
  }
}