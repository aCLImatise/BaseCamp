version 1.0

task Validatevcf {
  input {
    String? input_vcf
    Boolean? arg_output_failure
    Boolean? arg_reference_fasta
    Boolean? arg_location_start
    Boolean? arg_use_regions
    Boolean? arg_use_targets
    String? progress
    String? progress_seconds
    Boolean? arg_overlap_window
    Boolean? arg_maximum_number
    String? expand_hap_blocks
    String? limit
    String? apply_filters
  }
  command <<<
    validatevcf \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{true="-e" false="" arg_output_failure} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_location_start} \
      ~{true="-R" false="" arg_use_regions} \
      ~{true="-T" false="" arg_use_targets} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{true="-w" false="" arg_overlap_window} \
      ~{true="-n" false="" arg_maximum_number} \
      ~{if defined(expand_hap_blocks) then ("--expand-hapblocks " +  '"' + expand_hap_blocks + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(apply_filters) then ("--apply-filters " +  '"' + apply_filters + '"') else ""}
  >>>
  parameter_meta {
    input_vcf: "VCF file to validate."
    arg_output_failure: "[ --output-errors ] arg    Output failure information in a bed file."
    arg_reference_fasta: "[ --reference ] arg        The reference fasta file."
    arg_location_start: "[ --location ] arg         The location to start at."
    arg_use_regions: "[ --regions ] arg          Use a bed file for getting a subset of regions  (traversal via tabix)."
    arg_use_targets: "[ --targets ] arg          Use a bed file for getting a subset of targets  (streaming the whole file, ignoring things  outside the bed regions)."
    progress: "Set to true to output progress information."
    progress_seconds: "Output progress information every n seconds."
    arg_overlap_window: "[ --window ] arg           Overlap window to create haplotype blocks."
    arg_maximum_number: "[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate."
    expand_hap_blocks: "Number of bases to expand around each haplotype block."
    limit: "Maximum number of haplotype blocks to process."
    apply_filters: "Apply filtering in VCF (on by default)."
  }
}