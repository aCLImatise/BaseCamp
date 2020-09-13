version 1.0

task IvarCommand {
  input {
    String description
    String trim
    String variants
    String filter_variants
    String consensus
    String get_masked
    String remove_reads
    String version
  }
  command <<<
    ivar Command \
      ~{description} \
      ~{trim} \
      ~{variants} \
      ~{filter_variants} \
      ~{consensus} \
      ~{get_masked} \
      ~{remove_reads} \
      ~{version}
  >>>
  parameter_meta {
    description: "Description"
    trim: "Trim reads in aligned BAM file"
    variants: "Call variants from aligned BAM file"
    filter_variants: "Filter variants across replicates or samples"
    consensus: "Call consensus from aligned BAM file"
    get_masked: "Detect primer mismatches and get primer indices for the amplicon to be masked"
    remove_reads: "Remove reads from trimmed BAM file"
    version: "Show version information"
  }
  output {
    File out_stdout = stdout()
  }
}