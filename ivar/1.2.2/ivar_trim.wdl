version 1.0

task IvarTrim {
  input {
    Boolean? required_sorted_bam
    Boolean? bed_file_primer
    Boolean? minimum_length_retain
    Boolean? minimum_quality_threshold
    Boolean? width_sliding_default
    Boolean? include_reads_primers
    Boolean? required_prefix_file
  }
  command <<<
    ivar trim \
      ~{true="-i" false="" required_sorted_bam} \
      ~{true="-b" false="" bed_file_primer} \
      ~{true="-m" false="" minimum_length_retain} \
      ~{true="-q" false="" minimum_quality_threshold} \
      ~{true="-s" false="" width_sliding_default} \
      ~{true="-e" false="" include_reads_primers} \
      ~{true="-p" false="" required_prefix_file}
  >>>
  parameter_meta {
    required_sorted_bam: "(Required) Sorted bam file, with aligned reads, to trim primers and quality"
    bed_file_primer: "BED file with primer sequences and positions. If no BED file is specified, only quality trimming will be done."
    minimum_length_retain: "Minimum length of read to retain after trimming (Default: 30)"
    minimum_quality_threshold: "Minimum quality threshold for sliding window to pass (Default: 20)"
    width_sliding_default: "Width of sliding window (Default: 4)"
    include_reads_primers: "Include reads with no primers. By default, reads with no primers are excluded"
    required_prefix_file: "(Required) Prefix for the output BAM file"
  }
}