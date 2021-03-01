version 1.0

task NaiveVariantCallerpy {
  input {
    File? bam
    File? index
    File? output_vcf_filename
    File? reference_genome_filename
    Boolean? variants_only
    Boolean? use_strand
    Int? ploidy
    Int? min_support_depth
    Int? min_base_quality
    Int? min_mapping_quality
    String? coverage_d_type
    Boolean? allow_out_of_bounds_positions
    Boolean? safe
    Int? region
    File? regions_filename
    File? regions_file_columns
  }
  command <<<
    naive_variant_caller_py \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(output_vcf_filename) then ("--output_vcf_filename " +  '"' + output_vcf_filename + '"') else ""} \
      ~{if defined(reference_genome_filename) then ("--reference_genome_filename " +  '"' + reference_genome_filename + '"') else ""} \
      ~{if (variants_only) then "--variants_only" else ""} \
      ~{if (use_strand) then "--use_strand" else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(min_support_depth) then ("--min_support_depth " +  '"' + min_support_depth + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min_base_quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(min_mapping_quality) then ("--min_mapping_quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(coverage_d_type) then ("--coverage_dtype " +  '"' + coverage_d_type + '"') else ""} \
      ~{if (allow_out_of_bounds_positions) then "--allow_out_of_bounds_positions" else ""} \
      ~{if (safe) then "--safe" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(regions_filename) then ("--regions_filename " +  '"' + regions_filename + '"') else ""} \
      ~{if defined(regions_file_columns) then ("--regions_file_columns " +  '"' + regions_file_columns + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "BAM filename, optionally index filename. Multiple\\nallowed."
    index: "optionally index filename. Multiple allowed."
    output_vcf_filename: "Output VCF filename"
    reference_genome_filename: "Input reference file"
    variants_only: "Report only sites with a possible variant allele."
    use_strand: "Report counts by strand"
    ploidy: "Ploidy. Default=2."
    min_support_depth: "Minimum number of reads needed to consider a REF/ALT.\\nDefault=0."
    min_base_quality: "Minimum base quality."
    min_mapping_quality: "Minimum mapping."
    coverage_d_type: "dtype to use for coverage array"
    allow_out_of_bounds_positions: "Allows out of bounds positions to not throw fatal\\nerrors"
    safe: "Perform checks to prevent certain errors. Is slower."
    region: "region. Either <chrom> or <chrom>:<start>-<end>,\\norigin-0 half-open."
    regions_filename: "Regions filename. Three columns, origin-0 half-open.\\nExtra columns ignored. Multiple allowed."
    regions_file_columns: "Columns in regions file for chrom,start,end. 0-based"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_filename = "${in_output_vcf_filename}"
  }
}