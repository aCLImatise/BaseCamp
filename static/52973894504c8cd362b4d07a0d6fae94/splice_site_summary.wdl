version 1.0

task SpliceSiteSummary.pl {
  input {
    Boolean? reference_annotation_bed
    Boolean? splice_junctions_mapped
    Boolean? reference_genome_fasta
    Boolean? chromosome_sizes_files
    Boolean? convert_resuting_bed
    Boolean? filter_canonical_splice
    Boolean? maximum_intron_length
    Boolean? minimum_read_coverage
    Boolean? expand_splice_junctions
    Boolean? relative_output_path
    Boolean? prefix_output_files
    Boolean? man
  }
  command <<<
    splice_site_summary.pl \
      ~{true="-a" false="" reference_annotation_bed} \
      ~{true="-s" false="" splice_junctions_mapped} \
      ~{true="-f" false="" reference_genome_fasta} \
      ~{true="-c" false="" chromosome_sizes_files} \
      ~{true="-b" false="" convert_resuting_bed} \
      ~{true="-n" false="" filter_canonical_splice} \
      ~{true="-i" false="" maximum_intron_length} \
      ~{true="-r" false="" minimum_read_coverage} \
      ~{true="-w" false="" expand_splice_junctions} \
      ~{true="-o" false="" relative_output_path} \
      ~{true="-p" false="" prefix_output_files} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    reference_annotation_bed: "Reference annotation in BED12 format"
    splice_junctions_mapped: "Splice junctions from mapped RNA-seq data in BED6 format"
    reference_genome_fasta: "Reference genome in Fasta format"
    chromosome_sizes_files: "Chromosome sizes files"
    convert_resuting_bed: "Convert resuting BED6 files to bigBed format"
    filter_canonical_splice: "Filter canonical splice junctions"
    maximum_intron_length: "Maximum intron length. Splice junctions covering introns larger than this value are not considered."
    minimum_read_coverage: "Minimum read coverage for a splice junction. Only splice junctions that are supported by at least this number of reads are considered."
    expand_splice_junctions: "Expand splice junctions by a window of this size on both sides"
    relative_output_path: "Relative output path"
    prefix_output_files: "Prefix all output files with this string"
    man: "Prints the manual page and exits"
  }
}