version 1.0

task Vcf2ldGene {
  input {
    Boolean? in_vcf
    Boolean? out
    Boolean? people_include_id
    Boolean? people_include_file
    Boolean? people_exclude_id
    Boolean? people_exclude_file
    Boolean? range_list
    Boolean? site_file
    Boolean? gene_file
    Boolean? gene
    String format_dot
  }
  command <<<
    vcf2ld_gene \
      ~{format_dot} \
      ~{if (in_vcf) then "--inVcf" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_include_file) then "--peopleIncludeFile" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""} \
      ~{if (people_exclude_file) then "--peopleExcludeFile" else ""} \
      ~{if (range_list) then "--rangeList" else ""} \
      ~{if (site_file) then "--siteFile" else ""} \
      ~{if (gene_file) then "--geneFile" else ""} \
      ~{if (gene) then "--gene" else ""}
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
    gene_file: ": specify a gene file (for burden tests)"
    gene: ": specify which genes to test"
    format_dot: "--rangeFile: Specify the file containing ranges, please use"
  }
  output {
    File out_stdout = stdout()
  }
}