version 1.0

task RtgVcfmerge {
  input {
    File? bed_regions
    File? input_list_file
    File? output_vcf_file
    File? add_header
    Int? force_merge
    Boolean? force_merge_all
    Boolean? no_gzip
    Boolean? no_header
    Boolean? no_merge_alts
    Boolean? preserve_formats
    File? stats
    String _regionregion_set
    String declarations
    String different
  }
  command <<<
    rtg vcfmerge \
      ~{_regionregion_set} \
      ~{declarations} \
      ~{different} \
      ~{if defined(bed_regions) then ("--bed-regions " +  '"' + bed_regions + '"') else ""} \
      ~{if defined(input_list_file) then ("--input-list-file " +  '"' + input_list_file + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(add_header) then ("--add-header " +  '"' + add_header + '"') else ""} \
      ~{if defined(force_merge) then ("--force-merge " +  '"' + force_merge + '"') else ""} \
      ~{if (force_merge_all) then "--force-merge-all" else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (no_merge_alts) then "--no-merge-alts" else ""} \
      ~{if (preserve_formats) then "--preserve-formats" else ""} \
      ~{if (stats) then "--stats" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    bed_regions: "if set, only read VCF records that overlap the\\nranges contained in the specified BED file"
    input_list_file: "file containing a list of VCF format files (1\\nper line) to be merged"
    output_vcf_file: "output VCF file. Use '-' to write to standard"
    add_header: "|FILE file containing VCF header lines to add, or a\\nliteral header line. May be specified 0 or more\\ntimes"
    force_merge: "allow merging of specified header ID even when\\ndescriptions do not match. May be specified 0 or\\nmore times, or as a comma separated list"
    force_merge_all: "attempt merging of all non-matching header"
    no_gzip: "do not gzip the output"
    no_header: "prevent VCF header from being written"
    no_merge_alts: "do not merge multiple records if the ALTs are"
    preserve_formats: "do not merge multiple records containing\\nunmergeable FORMAT fields (Default is to remove\\nthose FORMAT fields so the variants can be\\ncombined)"
    stats: "output statistics for the merged VCF file"
    _regionregion_set: "--region=REGION          if set, only read VCF records within the"
    declarations: "-h, --help                   print help on command-line flag usage"
    different: "--no-merge-records       do not merge multiple records at the same"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
    File out_stats = "${in_stats}"
  }
}