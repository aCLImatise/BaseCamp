version 1.0

task Vcf2ldWindow {
  input {
    Boolean? in_vcf
    Boolean? out
    Boolean? people_include_id
    Boolean? people_include_file
    Boolean? people_exclude_id
    Boolean? people_exclude_file
    Boolean? range_list
    Boolean? range_file
    Boolean? site_file
    Boolean? window
    Boolean? anchor
  }
  command <<<
    vcf2ld_window \
      ~{true="--inVcf" false="" in_vcf} \
      ~{true="--out" false="" out} \
      ~{true="--peopleIncludeID" false="" people_include_id} \
      ~{true="--peopleIncludeFile" false="" people_include_file} \
      ~{true="--peopleExcludeID" false="" people_exclude_id} \
      ~{true="--peopleExcludeFile" false="" people_exclude_file} \
      ~{true="--rangeList" false="" range_list} \
      ~{true="--rangeFile" false="" range_file} \
      ~{true="--siteFile" false="" site_file} \
      ~{true="--window" false="" window} \
      ~{true="--anchor" false="" anchor}
  >>>
  parameter_meta {
    in_vcf: ": input VCF File"
    out: ": output prefix"
    people_include_id: ": give IDs of people that will be included in study"
    people_include_file: ": from given file, set IDs of people that will be included in study"
    people_exclude_id: ": give IDs of people that will be included in study"
    people_exclude_file: ": from given file, set IDs of people that will be included in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end format."
    range_file: ": Specify the file containing ranges, please use chr:begin-end format."
    site_file: ": Specify the file containing sites to include, please use \"chr pos\" format."
    window: ": specify sliding window size to calculate covariance"
    anchor: ": specify anchors SNPs to compare with. e.g. 1:20-20"
  }
}