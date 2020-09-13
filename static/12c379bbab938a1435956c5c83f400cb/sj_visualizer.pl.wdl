version 1.0

task SjVisualizerpl {
  input {
    Boolean? splice_junctions_mapped
    Boolean? chromosome_sizes_files
    Boolean? convert_resuting_files
    Boolean? minimum_read_coverage
    Boolean? expand_splice_junctions
    Boolean? filter_circular_splice
    File? relative_output_path
    Boolean? man
  }
  command <<<
    sj_visualizer_pl \
      ~{if (splice_junctions_mapped) then "-s" else ""} \
      ~{if (chromosome_sizes_files) then "-c" else ""} \
      ~{if (convert_resuting_files) then "-b" else ""} \
      ~{if (minimum_read_coverage) then "-r" else ""} \
      ~{if (expand_splice_junctions) then "-w" else ""} \
      ~{if (filter_circular_splice) then "-z" else ""} \
      ~{if (relative_output_path) then "-o" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    splice_junctions_mapped: "Splice junctions from mapped RNA-seq data in BED6 format"
    chromosome_sizes_files: "Chromosome sizes files"
    convert_resuting_files: "Convert resuting BED6 files to bigBed format"
    minimum_read_coverage: "Minimum read coverage for a splice junction. Only splice junctions\\nthat are supported by at least this number of reads are considered."
    expand_splice_junctions: "Expand splice junctions by a window of this size on both sides"
    filter_circular_splice: "Filter circular splice junctions"
    relative_output_path: "Relative output path"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    File out_relative_output_path = "${in_relative_output_path}"
  }
}