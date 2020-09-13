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
    Boolean? site_file
    Boolean? window
    Boolean? anchor
    String format_dot
  }
  command <<<
    vcf2ld_window \
      ~{format_dot} \
      ~{if (in_vcf) then "--inVcf" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_include_file) then "--peopleIncludeFile" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""} \
      ~{if (people_exclude_file) then "--peopleExcludeFile" else ""} \
      ~{if (range_list) then "--rangeList" else ""} \
      ~{if (site_file) then "--siteFile" else ""} \
      ~{if (window) then "--window" else ""} \
      ~{if (anchor) then "--anchor" else ""}
  >>>
  parameter_meta {
    in_vcf: ": input VCF File"
    out: ": output prefix"
    people_include_id: ": give IDs of people that will be included in study"
    people_include_file: ": from given file, set IDs of people that will be\\nincluded in study"
    people_exclude_id: ": give IDs of people that will be included in study"
    people_exclude_file: ": from given file, set IDs of people that will be\\nincluded in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end"
    site_file: ": Specify the file containing sites to include, please\\nuse \\\"chr pos\\\" format."
    window: ": specify sliding window size to calculate covariance"
    anchor: ": specify anchors SNPs to compare with. e.g. 1:20-20"
    format_dot: "--rangeFile: Specify the file containing ranges, please use"
  }
  output {
    File out_stdout = stdout()
  }
}