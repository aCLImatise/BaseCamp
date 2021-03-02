version 1.0

task Connor {
  input {
    Boolean? verbose
    Boolean? force
    File? log_file
    File? annotated_output_bam
    Float? consensus_freq_threshold
    Int? min_family_size_threshold
    Int? umt_distance_threshold
    String? filter_order
    Int? umt_length
    String input_bam
    String output_bam
  }
  command <<<
    connor \
      ~{input_bam} \
      ~{output_bam} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(annotated_output_bam) then ("--annotated_output_bam " +  '"' + annotated_output_bam + '"') else ""} \
      ~{if defined(consensus_freq_threshold) then ("--consensus_freq_threshold " +  '"' + consensus_freq_threshold + '"') else ""} \
      ~{if defined(min_family_size_threshold) then ("--min_family_size_threshold " +  '"' + min_family_size_threshold + '"') else ""} \
      ~{if defined(umt_distance_threshold) then ("--umt_distance_threshold " +  '"' + umt_distance_threshold + '"') else ""} \
      ~{if defined(filter_order) then ("--filter_order " +  '"' + filter_order + '"') else ""} \
      ~{if defined(umt_length) then ("--umt_length " +  '"' + umt_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "print all log messages to console"
    force: "=False. Override validation warnings"
    log_file: "={output_filename}.log. Path to verbose log file"
    annotated_output_bam: "path to output BAM containing all original aligns annotated with BAM tags"
    consensus_freq_threshold: "=0.6 (0..1.0): Ambiguous base calls at a specific position in a family are\\ntransformed to either majority base call, or N if the majority percentage\\nis below this threshold. (Higher threshold results in more Ns in\\nconsensus.)"
    min_family_size_threshold: "=3 (>=0): families with count of original reads < threshold are excluded\\nfrom the deduplicated output. (Higher threshold is more\\nstringent.)"
    umt_distance_threshold: "=1 (>=0); UMTs equal to or closer than this Hamming distance will be\\ncombined into a single family. Lower threshold make more families with more\\nconsistent UMTs; 0 implies UMI must match\\nexactly."
    filter_order: "=count; determines how filters will be ordered in the log\\nresults"
    umt_length: "=6 (>=1); length of UMT"
    input_bam: "path to input BAM"
    output_bam: "path to deduplicated output BAM"
  }
  output {
    File out_stdout = stdout()
    File out_annotated_output_bam = "${in_annotated_output_bam}"
  }
}