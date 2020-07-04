version 1.0

task Vcffilter {
  input {
    Boolean? info_filter
    String? genotype_filter
    Boolean? keep_info
    Boolean? filter_sites
    Boolean? tag_pass
    Boolean? tag_fail
    Boolean? append_filter
    Boolean? allele_tag
    Boolean? invert
    Boolean? or
    Boolean? region
    String vcf_file
  }
  command <<<
    vcffilter \
      ~{vcf_file} \
      ~{true="--info-filter" false="" info_filter} \
      ~{if defined(genotype_filter) then ("--genotype-filter " +  '"' + genotype_filter + '"') else ""} \
      ~{true="--keep-info" false="" keep_info} \
      ~{true="--filter-sites" false="" filter_sites} \
      ~{true="--tag-pass" false="" tag_pass} \
      ~{true="--tag-fail" false="" tag_fail} \
      ~{true="--append-filter" false="" append_filter} \
      ~{true="--allele-tag" false="" allele_tag} \
      ~{true="--invert" false="" invert} \
      ~{true="--or" false="" or} \
      ~{true="--region" false="" region}
  >>>
  parameter_meta {
    info_filter: "specifies a filter to apply to the info fields of records, removes alleles which do not pass the filter"
    genotype_filter: "a filter to apply to the genotype fields of records"
    keep_info: "used in conjunction with '-g', keeps variant info, but removes genotype"
    filter_sites: "filter entire records, not just alleles"
    tag_pass: "tag vcf records as positively filtered with this tag, print all records"
    tag_fail: "tag vcf records as negatively filtered with this tag, print all records"
    append_filter: "append the existing filter tag, don't just replace it"
    allele_tag: "apply -t on a per-allele basis.  adds or sets the corresponding INFO field tag"
    invert: "inverts the filter, e.g. grep -v"
    or: "use logical OR instead of AND to combine filters"
    region: "specify a region on which to target the filtering, requires a BGZF compressed file which has been indexed with tabix.  any number of regions may be specified."
    vcf_file: ""
  }
}