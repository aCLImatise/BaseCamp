version 1.0

task BlPairReads {
  input {
    Boolean? specify_fastq_files
    Boolean? specify_basename_output
    Boolean? use_sep_separator
    String pair_reads
  }
  command <<<
    bl-pair-reads \
      ~{pair_reads} \
      ~{true="-i" false="" specify_fastq_files} \
      ~{true="-o" false="" specify_basename_output} \
      ~{true="-s" false="" use_sep_separator}
  >>>
  parameter_meta {
    specify_fastq_files: "specify multiple input FASTQ files"
    specify_basename_output: "specify the BASENAME for the output files"
    use_sep_separator: "use SEP as the separator in the ID line that precedes the pair number [default ' ', for Casava 1.8 headers]"
    pair_reads: ""
  }
}