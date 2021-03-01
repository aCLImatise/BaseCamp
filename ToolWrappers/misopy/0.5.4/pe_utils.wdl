version 1.0

task PeUtils {
  input {
    Int? compute_insert_len
    Boolean? no_bam_filter
    Int? min_exon_size
    Int? sd_max
    Directory? output_dir
  }
  command <<<
    pe_utils \
      ~{if defined(compute_insert_len) then ("--compute-insert-len " +  '"' + compute_insert_len + '"') else ""} \
      ~{if (no_bam_filter) then "--no-bam-filter" else ""} \
      ~{if defined(min_exon_size) then ("--min-exon-size " +  '"' + min_exon_size + '"') else ""} \
      ~{if defined(sd_max) then ("--sd-max " +  '"' + sd_max + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compute_insert_len: "Compute insert length for given sample. Takes as input\\n(1) a comma-separated list of sorted, indexed BAM\\nfiles with headers (or a single BAM filename), (2) a\\nGFF file with constitutive exons. Outputs the insert\\nlength distribution into the output directory."
    no_bam_filter: "If provided, this ignores the BAM file flags that\\nstate whether the read was paired or not, and instead\\nuses only the read IDs to pair up the mates. Use this\\nif your paired-end BAM was the result of a samtools\\nmerge operation."
    min_exon_size: "Minimum size of constitutive exon (in nucleotides)\\nthat should be used in the computation. Default is 500\\nbp."
    sd_max: "Number of standard deviations used to define outliers.\\nBy default, set to 2, meaning that any points at least\\n2*sigma away from the mean of the insert length\\ndistribution will be discarded."
    output_dir: "Output directory.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}