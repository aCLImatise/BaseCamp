version 1.0

task IvarTrim {
  input {
    Boolean? required_sorted_bam
    Boolean? bed_file_specified
    Boolean? primer_pair_information
    Boolean? primer_position_offset
    Boolean? minimum_length_read
    Boolean? minimum_quality_threshold
    Boolean? width_sliding_window
    Boolean? include_reads_reads
    Boolean? keep_reads_allow
    File? required_prefix_output
  }
  command <<<
    ivar trim \
      ~{if (required_sorted_bam) then "-i" else ""} \
      ~{if (bed_file_specified) then "-b" else ""} \
      ~{if (primer_pair_information) then "-f" else ""} \
      ~{if (primer_position_offset) then "-x" else ""} \
      ~{if (minimum_length_read) then "-m" else ""} \
      ~{if (minimum_quality_threshold) then "-q" else ""} \
      ~{if (width_sliding_window) then "-s" else ""} \
      ~{if (include_reads_reads) then "-e" else ""} \
      ~{if (keep_reads_allow) then "-k" else ""} \
      ~{if (required_prefix_output) then "-p" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ivar:1.3.1--h089eab3_0"
  }
  parameter_meta {
    required_sorted_bam: "(Required) Sorted bam file, with aligned reads, to trim primers and quality"
    bed_file_specified: "BED file with primer sequences and positions. If no BED file is specified, only quality trimming will be done."
    primer_pair_information: "[EXPERIMENTAL] Primer pair information file containing left and right primer names for the same amplicon separated by a tab\\nIf provided, reads that do not fall within atleat one amplicon will be ignored prior to primer trimming."
    primer_position_offset: "Primer position offset (Default: 0). Reads that occur at the specified offset positions relative to primer positions will also be trimmed."
    minimum_length_read: "Minimum length of read to retain after trimming (Default: 30)"
    minimum_quality_threshold: "Minimum quality threshold for sliding window to pass (Default: 20)"
    width_sliding_window: "Width of sliding window (Default: 4)"
    include_reads_reads: "Include reads with no primers. By default, reads with no primers are excluded"
    keep_reads_allow: "Keep reads to allow for reanalysis: keep reads which would be dropped by\\nalignment length filter or primer requirements, but mark them QCFAIL"
    required_prefix_output: "(Required) Prefix for the output BAM file"
  }
  output {
    File out_stdout = stdout()
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}