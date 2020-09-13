version 1.0

task Blfasta2fastq {
  input {
    Boolean? specify_multiple_fasta
    Boolean? specify_multiple_corresponding_input_files
    Boolean? specify_multiple_corresponding_fastq_files
    Boolean? scores_qual_file
    Boolean? use_offset_converting
    Int fast_a_two_fast_q
  }
  command <<<
    bl_fasta2fastq \
      ~{fast_a_two_fast_q} \
      ~{if (specify_multiple_fasta) then "-i" else ""} \
      ~{if (specify_multiple_corresponding_input_files) then "-q" else ""} \
      ~{if (specify_multiple_corresponding_fastq_files) then "-o" else ""} \
      ~{if (scores_qual_file) then "-a" else ""} \
      ~{if (use_offset_converting) then "-t" else ""}
  >>>
  parameter_meta {
    specify_multiple_fasta: "specify multiple FASTA input files"
    specify_multiple_corresponding_input_files: "specify multiple (corresponding) QUAL input files"
    specify_multiple_corresponding_fastq_files: "specify multiple (corresponding) FASTQ output files"
    scores_qual_file: "scores in QUAL file are ASCII (default: numerical scores)"
    use_offset_converting: "use OFFSET for converting ASCII quality scores (default: 33)"
    fast_a_two_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}