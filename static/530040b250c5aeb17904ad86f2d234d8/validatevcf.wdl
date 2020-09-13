version 1.0

task Validatevcf {
  input {
    File? input_vcf
    File? arg_output_failure
    Boolean? arg_reference_fasta
    Boolean? arg_location_start
    Boolean? arg_use_regionstraversal
    Boolean? targetsstreaming_whole_file
    String? progress
    String? progress_seconds
    Boolean? arg_overlap_window
    Boolean? arg_maximum_number
    Int? expand_hap_blocks
    String? apply_filters
    String block_dot
  }
  command <<<
    validatevcf \
      ~{block_dot} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if (arg_output_failure) then "-e" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_location_start) then "-l" else ""} \
      ~{if (arg_use_regionstraversal) then "-R" else ""} \
      ~{if (targetsstreaming_whole_file) then "-T" else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{if (arg_overlap_window) then "-w" else ""} \
      ~{if (arg_maximum_number) then "-n" else ""} \
      ~{if defined(expand_hap_blocks) then ("--expand-hapblocks " +  '"' + expand_hap_blocks + '"') else ""} \
      ~{if defined(apply_filters) then ("--apply-filters " +  '"' + apply_filters + '"') else ""}
  >>>
  parameter_meta {
    input_vcf: "VCF file to validate."
    arg_output_failure: "[ --output-errors ] arg    Output failure information in a bed file."
    arg_reference_fasta: "[ --reference ] arg        The reference fasta file."
    arg_location_start: "[ --location ] arg         The location to start at."
    arg_use_regionstraversal: "[ --regions ] arg          Use a bed file for getting a subset of regions\\n(traversal via tabix)."
    targetsstreaming_whole_file: "[ --targets ] arg          Use a bed file for getting a subset of targets\\n(streaming the whole file, ignoring things\\noutside the bed regions)."
    progress: "Set to true to output progress information."
    progress_seconds: "Output progress information every n seconds."
    arg_overlap_window: "[ --window ] arg           Overlap window to create haplotype blocks."
    arg_maximum_number: "[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate."
    expand_hap_blocks: "Number of bases to expand around each haplotype"
    apply_filters: "Apply filtering in VCF (on by default)."
    block_dot: "--limit arg                   Maximum number of haplotype blocks to process."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_failure = "${in_arg_output_failure}"
  }
}