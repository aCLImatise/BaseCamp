version 1.0

task Bgen2vcf {
  input {
    Boolean? in_bg_en
    Boolean? in_bg_en_sample
    Boolean? out
    Boolean? people_include_id
    Boolean? people_include_file
    Boolean? people_exclude_id
    Boolean? people_exclude_file
    Boolean? range_list
    Boolean? range_file
    Boolean? site_file
    Boolean? hide_varid
    Boolean? hide_gt
    Boolean? show_ds
  }
  command <<<
    bgen2vcf \
      ~{true="--inBgen" false="" in_bg_en} \
      ~{true="--inBgenSample" false="" in_bg_en_sample} \
      ~{true="--out" false="" out} \
      ~{true="--peopleIncludeID" false="" people_include_id} \
      ~{true="--peopleIncludeFile" false="" people_include_file} \
      ~{true="--peopleExcludeID" false="" people_exclude_id} \
      ~{true="--peopleExcludeFile" false="" people_exclude_file} \
      ~{true="--rangeList" false="" range_list} \
      ~{true="--rangeFile" false="" range_file} \
      ~{true="--siteFile" false="" site_file} \
      ~{true="--hideVarId" false="" hide_varid} \
      ~{true="--hideGT" false="" hide_gt} \
      ~{true="--showDS" false="" show_ds}
  >>>
  parameter_meta {
    in_bg_en: ": Input BGEN File"
    in_bg_en_sample: ": Input SAMPLE file for the BGEN File"
    out: ": Output prefix"
    people_include_id: ": give IDs of people that will be included in study"
    people_include_file: ": from given file, set IDs of people that will be included in study"
    people_exclude_id: ": give IDs of people that will be included in study"
    people_exclude_file: ": from given file, set IDs of people that will be included in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end format."
    range_file: ": Specify the file containing ranges, please use chr:begin-end format."
    site_file: ": Specify the file containing site to extract, please use chr:pos format."
    hide_varid: ": Do not output Variant ID (only output rsid)"
    hide_gt: ": Do not call genotypes by skipping the GT tag"
    show_ds: ": Calculate bi-allelic dosage using the DS tag"
  }
}