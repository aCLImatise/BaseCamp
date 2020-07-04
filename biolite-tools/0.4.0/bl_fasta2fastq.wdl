version 1.0

task BlFasta2fastq {
  input {
    Boolean? specify_fasta_files
    Boolean? specify_multiple_corresponding_qual_files
    Boolean? specify_multiple_corresponding_fastq_files
    Boolean? scores_qual_file
    Boolean? use_offset_converting
    String fast_a_two_fast_q
  }
  command <<<
    bl-fasta2fastq \
      ~{fast_a_two_fast_q} \
      ~{true="-i" false="" specify_fasta_files} \
      ~{true="-q" false="" specify_multiple_corresponding_qual_files} \
      ~{true="-o" false="" specify_multiple_corresponding_fastq_files} \
      ~{true="-a" false="" scores_qual_file} \
      ~{true="-t" false="" use_offset_converting}
  >>>
  parameter_meta {
    specify_fasta_files: "specify multiple FASTA input files"
    specify_multiple_corresponding_qual_files: "specify multiple (corresponding) QUAL input files"
    specify_multiple_corresponding_fastq_files: "specify multiple (corresponding) FASTQ output files"
    scores_qual_file: "scores in QUAL file are ASCII (default: numerical scores)"
    use_offset_converting: "use OFFSET for converting ASCII quality scores (default: 33)"
    fast_a_two_fast_q: ""
  }
}