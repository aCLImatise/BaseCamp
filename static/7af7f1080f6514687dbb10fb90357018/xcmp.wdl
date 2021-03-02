version 1.0

task Xcmp {
  input {
    File? input_v_cfs
    Boolean? arg_output_variant
    Boolean? arg_output_failure
    Boolean? arg_reference_fasta
    Boolean? arg_location_start
    Boolean? arg_subset_ofregions
    Boolean? subset_oftargets_streaming
    Boolean? arg_field_use
    String? progress
    String? progress_seconds
    Boolean? arg_overlap_window
    Boolean? arg_maximum_number
    Int? expand_hap_blocks
    Int? limit
    Boolean? arg_apply_filtering
    String? always_hap_cmp
    String? no_hap_cmp
    String process_dot
  }
  command <<<
    xcmp \
      ~{process_dot} \
      ~{if defined(input_v_cfs) then ("--input-vcfs " +  '"' + input_v_cfs + '"') else ""} \
      ~{if (arg_output_variant) then "-o" else ""} \
      ~{if (arg_output_failure) then "-e" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_location_start) then "-l" else ""} \
      ~{if (arg_subset_ofregions) then "-R" else ""} \
      ~{if (subset_oftargets_streaming) then "-T" else ""} \
      ~{if (arg_field_use) then "-q" else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{if (arg_overlap_window) then "-w" else ""} \
      ~{if (arg_maximum_number) then "-n" else ""} \
      ~{if defined(expand_hap_blocks) then ("--expand-hapblocks " +  '"' + expand_hap_blocks + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if defined(always_hap_cmp) then ("--always-hapcmp " +  '"' + always_hap_cmp + '"') else ""} \
      ~{if defined(no_hap_cmp) then ("--no-hapcmp " +  '"' + no_hap_cmp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_v_cfs: "Two VCF files to compare (use file:sample\\nfor a specific sample column)."
    arg_output_variant: "[ --output-vcf ] arg          Output variant comparison results to VCF."
    arg_output_failure: "[ --output-errors ] arg       Output failure information."
    arg_reference_fasta: "[ --reference ] arg           The reference fasta file."
    arg_location_start: "[ --location ] arg            The location to start at."
    arg_subset_ofregions: "[ --regions ] arg             Use a bed file for getting a subset of\\nregions (traversal via tabix)."
    subset_oftargets_streaming: "[ --targets ] arg             Use a bed file for getting a subset of\\ntargets (streaming the whole file, ignoring\\nthings outside the bed regions)."
    arg_field_use: "[ --qq ] arg                  Field to use for quality scoring (this will\\nbe output as the QQ info field)."
    progress: "Set to true to output progress information."
    progress_seconds: "Output progress information every n seconds."
    arg_overlap_window: "[ --window ] arg              Overlap window to create haplotype blocks."
    arg_maximum_number: "[ --max-n-haplotypes ] arg    Maximum number of haplotypes to enumerate."
    expand_hap_blocks: "Number of bases to expand around each\\nhaplotype block."
    limit: "Maximum number of haplotype blocks to"
    arg_apply_filtering: "[ --apply-filters-query ] arg Apply filtering in query VCF (off by\\ndefault)."
    always_hap_cmp: "Always compare haplotype blocks (even if\\nthey match). Testing use only/slow."
    no_hap_cmp: "Disable haplotype comparison. This overrides\\nall other haplotype comparison options.\\n"
    process_dot: "--apply-filters-truth arg        Apply filtering in truth VCF (on by "
  }
  output {
    File out_stdout = stdout()
  }
}