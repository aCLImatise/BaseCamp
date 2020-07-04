version 1.0

task Xcmp {
  input {
    String? input_v_cfs
    Boolean? arg_output_variant
    Boolean? arg_output_failure
    Boolean? arg_reference_fasta
    Boolean? arg_location_start
    Boolean? arg_use_regions
    Boolean? targets_streaming_file
    Boolean? arg_field_use
    String? progress
    String? progress_seconds
    Boolean? arg_overlap_window
    Boolean? arg_maximum_number
    String? expand_hap_blocks
    String? limit
    String? apply_filters_truth
    Boolean? arg_apply_filtering
    String? always_hap_cmp
    String? no_hap_cmp
  }
  command <<<
    xcmp \
      ~{if defined(input_v_cfs) then ("--input-vcfs " +  '"' + input_v_cfs + '"') else ""} \
      ~{true="-o" false="" arg_output_variant} \
      ~{true="-e" false="" arg_output_failure} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_location_start} \
      ~{true="-R" false="" arg_use_regions} \
      ~{true="-T" false="" targets_streaming_file} \
      ~{true="-q" false="" arg_field_use} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{true="-w" false="" arg_overlap_window} \
      ~{true="-n" false="" arg_maximum_number} \
      ~{if defined(expand_hap_blocks) then ("--expand-hapblocks " +  '"' + expand_hap_blocks + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(apply_filters_truth) then ("--apply-filters-truth " +  '"' + apply_filters_truth + '"') else ""} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{if defined(always_hap_cmp) then ("--always-hapcmp " +  '"' + always_hap_cmp + '"') else ""} \
      ~{if defined(no_hap_cmp) then ("--no-hapcmp " +  '"' + no_hap_cmp + '"') else ""}
  >>>
  parameter_meta {
    input_v_cfs: "Two VCF files to compare (use file:sample  for a specific sample column)."
    arg_output_variant: "[ --output-vcf ] arg          Output variant comparison results to VCF."
    arg_output_failure: "[ --output-errors ] arg       Output failure information."
    arg_reference_fasta: "[ --reference ] arg           The reference fasta file."
    arg_location_start: "[ --location ] arg            The location to start at."
    arg_use_regions: "[ --regions ] arg             Use a bed file for getting a subset of  regions (traversal via tabix)."
    targets_streaming_file: "[ --targets ] arg             Use a bed file for getting a subset of  targets (streaming the whole file, ignoring  things outside the bed regions)."
    arg_field_use: "[ --qq ] arg                  Field to use for quality scoring (this will  be output as the QQ info field)."
    progress: "Set to true to output progress information."
    progress_seconds: "Output progress information every n seconds."
    arg_overlap_window: "[ --window ] arg              Overlap window to create haplotype blocks."
    arg_maximum_number: "[ --max-n-haplotypes ] arg    Maximum number of haplotypes to enumerate."
    expand_hap_blocks: "Number of bases to expand around each  haplotype block."
    limit: "Maximum number of haplotype blocks to  process."
    apply_filters_truth: "Apply filtering in truth VCF (on by  default)."
    arg_apply_filtering: "[ --apply-filters-query ] arg Apply filtering in query VCF (off by  default)."
    always_hap_cmp: "Always compare haplotype blocks (even if  they match). Testing use only/slow."
    no_hap_cmp: "Disable haplotype comparison. This overrides all other haplotype comparison options."
  }
}