version 1.0

task Hapcmp {
  input {
    String? input_regions
    String? input_v_cfs
    Boolean? arg_output_block
    Boolean? arg_output_failure
    Boolean? arg_shared_variants
    Boolean? arg_reference_fasta
    Boolean? arg_maximum_number_enumerate
    String? output_sequences
    String? progress
    String? progress_seconds
    Boolean? arg_maximum_number_process
    Boolean? arg_apply_filtering
    String? do_alignment
  }
  command <<<
    hapcmp \
      ~{if defined(input_regions) then ("--input-regions " +  '"' + input_regions + '"') else ""} \
      ~{if defined(input_v_cfs) then ("--input-vcfs " +  '"' + input_v_cfs + '"') else ""} \
      ~{true="-b" false="" arg_output_block} \
      ~{true="-e" false="" arg_output_failure} \
      ~{true="-d" false="" arg_shared_variants} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-n" false="" arg_maximum_number_enumerate} \
      ~{if defined(output_sequences) then ("--output-sequences " +  '"' + output_sequences + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{true="-l" false="" arg_maximum_number_process} \
      ~{true="-f" false="" arg_apply_filtering} \
      ~{if defined(do_alignment) then ("--do-alignment " +  '"' + do_alignment + '"') else ""}
  >>>
  parameter_meta {
    input_regions: "The input bed file specifying haplotype block  regions (use - for stdin)."
    input_v_cfs: "Two VCF files to compare (use file:sample for a specific sample column)."
    arg_output_block: "[ --output-bed ] arg       Output block results as bed files (default is  to output to stdout)."
    arg_output_failure: "[ --output-errors ] arg    Output failure information."
    arg_shared_variants: "[ --output-diffs ] arg     Output shared and different variants to a mJSON file (one json record per line, default is to  not output diffs)."
    arg_reference_fasta: "[ --reference ] arg        The reference fasta file."
    arg_maximum_number_enumerate: "[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate."
    output_sequences: "Set to true to output haplotype sequences."
    progress: "Set to true to output progress information."
    progress_seconds: "Output progress information every n seconds."
    arg_maximum_number_process: "[ --limit ] arg            Maximum number of haplotype blocks to process."
    arg_apply_filtering: "[ --apply-filters ] arg    Apply filtering in VCF."
    do_alignment: "Perform alignments on mismatching haplotypes to find best approximate match."
  }
}