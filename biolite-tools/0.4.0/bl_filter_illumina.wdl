version 1.0

task BlFilterIllumina {
  input {
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_output_files
    Boolean? specify_single_file
    Boolean? use_fasta_output
    Boolean? ascii_offset_quality
    Boolean? filter_reads_mean
    Boolean? limit_output_only
    Boolean? remove_illumina_sequences
    Boolean? remove_sequences_suspicious
    Boolean? reformat_paired_read
    String filter_illumina
  }
  command <<<
    bl-filter-illumina \
      ~{filter_illumina} \
      ~{true="-i" false="" specify_multiple_input_files} \
      ~{true="-o" false="" specify_multiple_output_files} \
      ~{true="-u" false="" specify_single_file} \
      ~{true="-f" false="" use_fasta_output} \
      ~{true="-t" false="" ascii_offset_quality} \
      ~{true="-q" false="" filter_reads_mean} \
      ~{true="-n" false="" limit_output_only} \
      ~{true="-a" false="" remove_illumina_sequences} \
      ~{true="-b" false="" remove_sequences_suspicious} \
      ~{true="-s" false="" reformat_paired_read}
  >>>
  parameter_meta {
    specify_multiple_input_files: "specify multiple INPUT files"
    specify_multiple_output_files: "specify multiple OUTPUT files. If input data are paired, these files contain only reads that passed for both members of the pair"
    specify_single_file: "specify single OUTPUT file for reads that passed for one member of a pair but not the other. These reads passed the filter criteria, but are excluded from the multiple OUTPUT files specified by -o because  their paired read did not pass"
    use_fasta_output: "use FASTA output instead of FASTQ"
    ascii_offset_quality: "ascii OFFSET for the quality score (default = 33)"
    filter_reads_mean: "filter out reads that have a mean quality less than QUALITY"
    limit_output_only: "limit output to only the first NREADS that pass"
    remove_illumina_sequences: "remove Illumina adapter sequences"
    remove_sequences_suspicious: "remove sequences with suspicious base content"
    reformat_paired_read: "reformat paired read ID lines by replacing everything after the first space, tab or / with the specified SEP followed by the input file number (e.g. '/' will use /1 as the ID suffix for the first input file, etc.)"
    filter_illumina: ""
  }
}