version 1.0

task SjVisualizer.pl {
  input {
    Boolean? splice_junctions_mapped
    Boolean? chromosome_sizes_files
    Boolean? convert_resuting_bed
    Boolean? minimum_read_coverage
    Boolean? expand_splice_junctions
    Boolean? filter_circular_splice
    Boolean? relative_output_path
    Boolean? man
  }
  command <<<
    sj_visualizer.pl \
      ~{true="-s" false="" splice_junctions_mapped} \
      ~{true="-c" false="" chromosome_sizes_files} \
      ~{true="-b" false="" convert_resuting_bed} \
      ~{true="-r" false="" minimum_read_coverage} \
      ~{true="-w" false="" expand_splice_junctions} \
      ~{true="-z" false="" filter_circular_splice} \
      ~{true="-o" false="" relative_output_path} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    splice_junctions_mapped: "Splice junctions from mapped RNA-seq data in BED6 format"
    chromosome_sizes_files: "Chromosome sizes files"
    convert_resuting_bed: "Convert resuting BED6 files to bigBed format"
    minimum_read_coverage: "Minimum read coverage for a splice junction. Only splice junctions that are supported by at least this number of reads are considered."
    expand_splice_junctions: "Expand splice junctions by a window of this size on both sides"
    filter_circular_splice: "Filter circular splice junctions"
    relative_output_path: "Relative output path"
    man: "Prints the manual page and exits"
  }
}