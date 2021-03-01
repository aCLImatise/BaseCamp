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
    Boolean? site_file
    Boolean? hide_varid
    Boolean? hide_gt
    Boolean? show_ds
    String format_dot
  }
  command <<<
    bgen2vcf \
      ~{format_dot} \
      ~{if (in_bg_en) then "--inBgen" else ""} \
      ~{if (in_bg_en_sample) then "--inBgenSample" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_include_file) then "--peopleIncludeFile" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""} \
      ~{if (people_exclude_file) then "--peopleExcludeFile" else ""} \
      ~{if (range_list) then "--rangeList" else ""} \
      ~{if (site_file) then "--siteFile" else ""} \
      ~{if (hide_varid) then "--hideVarId" else ""} \
      ~{if (hide_gt) then "--hideGT" else ""} \
      ~{if (show_ds) then "--showDS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_bg_en: ": Input BGEN File"
    in_bg_en_sample: ": Input SAMPLE file for the BGEN File"
    out: ": Output prefix"
    people_include_id: ": give IDs of people that will be included in study"
    people_include_file: ": from given file, set IDs of people that will be\\nincluded in study"
    people_exclude_id: ": give IDs of people that will be included in study"
    people_exclude_file: ": from given file, set IDs of people that will be\\nincluded in study"
    range_list: ": Specify some ranges to use, please use chr:begin-end"
    site_file: ": Specify the file containing site to extract, please use\\nchr:pos format."
    hide_varid: ": Do not output Variant ID (only output rsid)"
    hide_gt: ": Do not call genotypes by skipping the GT tag"
    show_ds: ": Calculate bi-allelic dosage using the DS tag"
    format_dot: "--rangeFile: Specify the file containing ranges, please use"
  }
  output {
    File out_stdout = stdout()
  }
}