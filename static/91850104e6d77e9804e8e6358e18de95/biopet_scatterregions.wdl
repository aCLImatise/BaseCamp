version 1.0

task BiopetScatterregions {
  input {
    String? log_level
    String? output_dir
    String? reference_fast_a
    String? scatter_size
    String? regions
    Boolean? not_combine_contigs
    String? max_contigs_in_scatter_job
    String? bam_file
    Boolean? not_split_contigs
    String scatter_regions
  }
  command <<<
    biopet-scatterregions \
      ~{scatter_regions} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(reference_fast_a) then ("--referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(scatter_size) then ("--scatterSize " +  '"' + scatter_size + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{true="--notCombineContigs" false="" not_combine_contigs} \
      ~{if defined(max_contigs_in_scatter_job) then ("--maxContigsInScatterJob " +  '"' + max_contigs_in_scatter_job + '"') else ""} \
      ~{if defined(bam_file) then ("--bamFile " +  '"' + bam_file + '"') else ""} \
      ~{true="--notSplitContigs" false="" not_split_contigs}
  >>>
  parameter_meta {
    log_level: "Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'"
    output_dir: "Output directory"
    reference_fast_a: "Reference fasta file, (dict file should be next to it)"
    scatter_size: "Approximately scatter size, tool will make all scatters the same size. default = 1000000"
    regions: "If given only regions in the given bed file will be used for scattering"
    not_combine_contigs: "If set each scatter can only contain 1 contig"
    max_contigs_in_scatter_job: "If set each scatter can only contain 1 contig"
    bam_file: "When given the regions will be scattered based on number of reads in the index file"
    not_split_contigs: "When this option is set contigs are not split."
    scatter_regions: ""
  }
}