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
    File vcf_file
  }
  command <<<
    vcffilter \
      ~{vcf_file} \
      ~{if (info_filter) then "--info-filter" else ""} \
      ~{if defined(genotype_filter) then ("--genotype-filter " +  '"' + genotype_filter + '"') else ""} \
      ~{if (keep_info) then "--keep-info" else ""} \
      ~{if (filter_sites) then "--filter-sites" else ""} \
      ~{if (tag_pass) then "--tag-pass" else ""} \
      ~{if (tag_fail) then "--tag-fail" else ""} \
      ~{if (append_filter) then "--append-filter" else ""} \
      ~{if (allele_tag) then "--allele-tag" else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if (or) then "--or" else ""} \
      ~{if (region) then "--region" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info_filter: "specifies a filter to apply to the info fields of records,\\nremoves alleles which do not pass the filter"
    genotype_filter: "a filter to apply to the genotype fields of records"
    keep_info: "used in conjunction with '-g', keeps variant info, but removes genotype"
    filter_sites: "filter entire records, not just alleles"
    tag_pass: "tag vcf records as positively filtered with this tag, print all records"
    tag_fail: "tag vcf records as negatively filtered with this tag, print all records"
    append_filter: "append the existing filter tag, don't just replace it"
    allele_tag: "apply -t on a per-allele basis.  adds or sets the corresponding INFO field tag"
    invert: "inverts the filter, e.g. grep -v"
    or: "use logical OR instead of AND to combine filters"
    region: "specify a region on which to target the filtering, requires a BGZF\\ncompressed file which has been indexed with tabix.  any number of\\nregions may be specified."
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}