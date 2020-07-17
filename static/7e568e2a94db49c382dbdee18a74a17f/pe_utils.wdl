version 1.0

task PeUtils {
  input {
    String? compute_insert_len
    Boolean? no_bam_filter
    Int? min_exon_size
    String? sd_max
    String? output_dir
  }
  command <<<
    pe_utils \
      ~{if defined(compute_insert_len) then ("--compute-insert-len " +  '"' + compute_insert_len + '"') else ""} \
      ~{true="--no-bam-filter" false="" no_bam_filter} \
      ~{if defined(min_exon_size) then ("--min-exon-size " +  '"' + min_exon_size + '"') else ""} \
      ~{if defined(sd_max) then ("--sd-max " +  '"' + sd_max + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    compute_insert_len: "Compute insert length for given sample. Takes as input (1) a comma-separated list of sorted, indexed BAM files with headers (or a single BAM filename), (2) a GFF file with constitutive exons. Outputs the insert length distribution into the output directory."
    no_bam_filter: "If provided, this ignores the BAM file flags that state whether the read was paired or not, and instead uses only the read IDs to pair up the mates. Use this if your paired-end BAM was the result of a samtools merge operation."
    min_exon_size: "Minimum size of constitutive exon (in nucleotides) that should be used in the computation. Default is 500 bp."
    sd_max: "Number of standard deviations used to define outliers. By default, set to 2, meaning that any points at least 2*sigma away from the mean of the insert length distribution will be discarded."
    output_dir: "Output directory."
  }
}