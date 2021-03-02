version 1.0

task RtgVcfannotate {
  input {
    File? bed_regions
    File? vcf_file_containing
    File? output_vcf_file
    Int? region
    Int? annotation
    File? bed_ids
    File? bed_info
    Boolean? fill_an_ac
    String? info_description
    String? info_id
    File? relabel
    File? vcf_ids
    File? add_header
    Boolean? no_gzip
    Boolean? no_header
  }
  command <<<
    rtg vcfannotate \
      ~{if defined(bed_regions) then ("--bed-regions " +  '"' + bed_regions + '"') else ""} \
      ~{if defined(vcf_file_containing) then ("--input " +  '"' + vcf_file_containing + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(bed_ids) then ("--bed-ids " +  '"' + bed_ids + '"') else ""} \
      ~{if defined(bed_info) then ("--bed-info " +  '"' + bed_info + '"') else ""} \
      ~{if (fill_an_ac) then "--fill-an-ac" else ""} \
      ~{if defined(info_description) then ("--info-description " +  '"' + info_description + '"') else ""} \
      ~{if defined(info_id) then ("--info-id " +  '"' + info_id + '"') else ""} \
      ~{if defined(relabel) then ("--relabel " +  '"' + relabel + '"') else ""} \
      ~{if defined(vcf_ids) then ("--vcf-ids " +  '"' + vcf_ids + '"') else ""} \
      ~{if defined(add_header) then ("--add-header " +  '"' + add_header + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (no_header) then "--no-header" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed_regions: "if set, only read VCF records that overlap the\\nranges contained in the specified BED file"
    vcf_file_containing: "VCF file containing variants to annotate. Use\\n'-' to read from standard input"
    output_vcf_file: "output VCF file name. Use '-' to write to\\nstandard output"
    region: "if set, only read VCF records within the\\nspecified range. The format is one of\\n<sequence_name>, <sequence_name>:<start>-<end>,\\n<sequence_name>:<pos>+<length> or\\n<sequence_name>:<pos>~<padding>"
    annotation: "add computed annotation to VCF records. Allowed\\nvalues are [AC, AN, EP, GQD, IC, LAL, MEANQAD,\\nNAA, PD, QA, QD, RA, SCONT, VAF, VAF1, ZY]. May\\nbe specified 0 or more times, or as a comma\\nseparated list"
    bed_ids: "add variant IDs from BED file. May be specified\\n0 or more times"
    bed_info: "add INFO annotations from BED file. May be\\nspecified 0 or more times"
    fill_an_ac: "add or update the AN and AC INFO fields"
    info_description: "if the BED INFO field is not already declared,\\nuse this description in the header (Default is\\nAnnotation)"
    info_id: "the INFO ID for BED INFO annotations (Default\\nis ANN)"
    relabel: "relabel samples according to \\\"old-name\\nnew-name\\\" pairs in specified file"
    vcf_ids: "add variant IDs from VCF file. May be specified\\n0 or more times"
    add_header: "|FILE  file containing VCF header lines to add, or a\\nliteral header line. May be specified 0 or more\\ntimes"
    no_gzip: "do not gzip the output"
    no_header: "prevent VCF header from being written"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}