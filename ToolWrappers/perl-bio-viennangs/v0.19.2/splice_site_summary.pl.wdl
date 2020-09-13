version 1.0

task SpliceSiteSummarypl {
  input {
    Boolean? reference_annotation_bed
    Boolean? splice_junctions_mapped
    Boolean? reference_genome_fasta
    Boolean? chromosome_sizes_files
    Boolean? convert_resuting_files
    Boolean? filter_canonical_splice
    Boolean? maximum_intron_length
    Boolean? minimum_read_coverage
    Boolean? expand_splice_junctions
    File? relative_output_path
    Boolean? prefix_output_files
    Boolean? man
  }
  command <<<
    splice_site_summary_pl \
      ~{if (reference_annotation_bed) then "-a" else ""} \
      ~{if (splice_junctions_mapped) then "-s" else ""} \
      ~{if (reference_genome_fasta) then "-f" else ""} \
      ~{if (chromosome_sizes_files) then "-c" else ""} \
      ~{if (convert_resuting_files) then "-b" else ""} \
      ~{if (filter_canonical_splice) then "-n" else ""} \
      ~{if (maximum_intron_length) then "-i" else ""} \
      ~{if (minimum_read_coverage) then "-r" else ""} \
      ~{if (expand_splice_junctions) then "-w" else ""} \
      ~{if (relative_output_path) then "-o" else ""} \
      ~{if (prefix_output_files) then "-p" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    reference_annotation_bed: "Reference annotation in BED12 format"
    splice_junctions_mapped: "Splice junctions from mapped RNA-seq data in BED6 format"
    reference_genome_fasta: "Reference genome in Fasta format"
    chromosome_sizes_files: "Chromosome sizes files"
    convert_resuting_files: "Convert resuting BED6 files to bigBed format"
    filter_canonical_splice: "Filter canonical splice junctions"
    maximum_intron_length: "Maximum intron length. Splice junctions covering introns larger than\\nthis value are not considered."
    minimum_read_coverage: "Minimum read coverage for a splice junction. Only splice junctions\\nthat are supported by at least this number of reads are considered."
    expand_splice_junctions: "Expand splice junctions by a window of this size on both sides"
    relative_output_path: "Relative output path"
    prefix_output_files: "Prefix all output files with this string"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    File out_relative_output_path = "${in_relative_output_path}"
  }
}