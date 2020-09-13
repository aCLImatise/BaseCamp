version 1.0

task Blfilterillumina {
  input {
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_output_files
    File? specify_single_file
    Boolean? use_fasta_output
    Boolean? ascii_offset_quality
    Boolean? filter_reads_less
    Boolean? limit_output_only
    Boolean? remove_illumina_sequences
    Boolean? remove_sequences_suspicious
    Boolean? reformat_paired_read
    String filter_illumina
  }
  command <<<
    bl_filter_illumina \
      ~{filter_illumina} \
      ~{if (specify_multiple_input_files) then "-i" else ""} \
      ~{if (specify_multiple_output_files) then "-o" else ""} \
      ~{if (specify_single_file) then "-u" else ""} \
      ~{if (use_fasta_output) then "-f" else ""} \
      ~{if (ascii_offset_quality) then "-t" else ""} \
      ~{if (filter_reads_less) then "-q" else ""} \
      ~{if (limit_output_only) then "-n" else ""} \
      ~{if (remove_illumina_sequences) then "-a" else ""} \
      ~{if (remove_sequences_suspicious) then "-b" else ""} \
      ~{if (reformat_paired_read) then "-s" else ""}
  >>>
  parameter_meta {
    specify_multiple_input_files: "specify multiple INPUT files"
    specify_multiple_output_files: "specify multiple OUTPUT files. If input data are paired, these files\\ncontain only reads that passed for both members of the pair"
    specify_single_file: "specify single OUTPUT file for reads that passed for one member of a\\npair but not the other. These reads passed the filter criteria, but\\nare excluded from the multiple OUTPUT files specified by -o because\\ntheir paired read did not pass"
    use_fasta_output: "use FASTA output instead of FASTQ"
    ascii_offset_quality: "ascii OFFSET for the quality score (default = 33)"
    filter_reads_less: "filter out reads that have a mean quality less than QUALITY"
    limit_output_only: "limit output to only the first NREADS that pass"
    remove_illumina_sequences: "remove Illumina adapter sequences"
    remove_sequences_suspicious: "remove sequences with suspicious base content"
    reformat_paired_read: "reformat paired read ID lines by replacing everything after the first\\nspace, tab or / with the specified SEP followed by the input file number\\n(e.g. '/' will use /1 as the ID suffix for the first input file, etc.)"
    filter_illumina: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_single_file = "${in_specify_single_file}"
  }
}