version 1.0

task RtgVcfsubset {
  input {
    File? bed_regions
    File? vcf_file_containing
    File? output_vcf_file
    Int? keep_filter
    Int? keep_format
    Int? keep_info
    File? keep_sample
    Int? remove_filter
    Boolean? remove_filters
    Int? remove_format
    Boolean? remove_ids
    Int? remove_info
    Boolean? remove_infos
    Boolean? remove_qual
    File? remove_sample
    Boolean? remove_samples
    Boolean? no_gzip
    Boolean? no_header
    String _regionregion_only
  }
  command <<<
    rtg vcfsubset \
      ~{_regionregion_only} \
      ~{if defined(bed_regions) then ("--bed-regions " +  '"' + bed_regions + '"') else ""} \
      ~{if defined(vcf_file_containing) then ("--input " +  '"' + vcf_file_containing + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(keep_filter) then ("--keep-filter " +  '"' + keep_filter + '"') else ""} \
      ~{if defined(keep_format) then ("--keep-format " +  '"' + keep_format + '"') else ""} \
      ~{if defined(keep_info) then ("--keep-info " +  '"' + keep_info + '"') else ""} \
      ~{if defined(keep_sample) then ("--keep-sample " +  '"' + keep_sample + '"') else ""} \
      ~{if defined(remove_filter) then ("--remove-filter " +  '"' + remove_filter + '"') else ""} \
      ~{if (remove_filters) then "--remove-filters" else ""} \
      ~{if defined(remove_format) then ("--remove-format " +  '"' + remove_format + '"') else ""} \
      ~{if (remove_ids) then "--remove-ids" else ""} \
      ~{if defined(remove_info) then ("--remove-info " +  '"' + remove_info + '"') else ""} \
      ~{if (remove_infos) then "--remove-infos" else ""} \
      ~{if (remove_qual) then "--remove-qual" else ""} \
      ~{if defined(remove_sample) then ("--remove-sample " +  '"' + remove_sample + '"') else ""} \
      ~{if (remove_samples) then "--remove-samples" else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_regions: "if set, only read VCF records that overlap\\nthe ranges contained in the specified BED\\nfile"
    vcf_file_containing: "VCF file containing variants to manipulate.\\nUse '-' to read from standard input"
    output_vcf_file: "output VCF file. Use '-' to write to standard"
    keep_filter: "keep the specified FILTER tag. May be\\nspecified 0 or more times, or as a comma\\nseparated list"
    keep_format: "keep the specified FORMAT field. May be\\nspecified 0 or more times, or as a comma\\nseparated list"
    keep_info: "keep the specified INFO tag. May be specified\\n0 or more times, or as a comma separated list"
    keep_sample: "|FILE   file containing sample IDs to keep, or a\\nliteral sample name. May be specified 0 or\\nmore times, or as a comma separated list"
    remove_filter: "remove the specified FILTER tag. May be\\nspecified 0 or more times, or as a comma\\nseparated list"
    remove_filters: "remove all FILTER tags"
    remove_format: "remove the specified FORMAT field. May be\\nspecified 0 or more times, or as a comma\\nseparated list"
    remove_ids: "remove the contents of the ID field"
    remove_info: "remove the specified INFO tag. May be\\nspecified 0 or more times, or as a comma\\nseparated list"
    remove_infos: "remove all INFO tags"
    remove_qual: "remove the QUAL field"
    remove_sample: "|FILE file containing sample IDs to remove, or a\\nliteral sample name. May be specified 0 or\\nmore times, or as a comma separated list"
    remove_samples: "remove all samples"
    no_gzip: "do not gzip the output"
    no_header: "prevent VCF header from being written"
    _regionregion_only: "--region=REGION             if set, only read VCF records within the"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}