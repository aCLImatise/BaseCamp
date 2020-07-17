version 1.0

task Preprocess {
  input {
    String? input_vcf
    Boolean? arg_output_variant
    Boolean? arg_reference_fasta
    Boolean? arg_location_start
    Boolean? arg_use_regions
    Boolean? targets_streaming_file
    String? progress
    String? haploid_x
    String? progress_seconds
    String? limit
    Boolean? arg_apply_normalisations
    Boolean? arg_leftshift_indel
  }
  command <<<
    preprocess \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{true="-o" false="" arg_output_variant} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_location_start} \
      ~{true="-R" false="" arg_use_regions} \
      ~{true="-T" false="" targets_streaming_file} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(haploid_x) then ("--haploid-x " +  '"' + haploid_x + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{true="-V" false="" arg_apply_normalisations} \
      ~{true="-L" false="" arg_leftshift_indel}
  >>>
  parameter_meta {
    input_vcf: "VCF files to preprocess (use file:sample for a specific sample column)."
    arg_output_variant: "[ --output-vcf ] arg          Output variant comparison results to VCF."
    arg_reference_fasta: "[ --reference ] arg           The reference fasta file."
    arg_location_start: "[ --location ] arg            The location to start at."
    arg_use_regions: "[ --regions ] arg             Use a bed file for getting a subset of  regions (traversal via tabix)."
    targets_streaming_file: "[ --targets ] arg             Use a bed file for getting a subset of  targets (streaming the whole file, ignoring  things outside the bed regions)."
    progress: "Set to true to output progress information."
    haploid_x: "Expand GTs on chrX: turn 1 into 1/1"
    progress_seconds: "Output progress information every n seconds."
    limit: "Maximum number of records to process."
    arg_apply_normalisations: "[ --preprocess-variants ] arg Apply variant normalisations, trimming,  realignment for complex variants (off by  default)."
    arg_leftshift_indel: "[ --leftshift ] arg           Left-shift indel alleles (off by default)."
  }
}