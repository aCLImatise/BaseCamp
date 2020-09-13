version 1.0

task Blfastq2fasta {
  input {
    Boolean? specify_multiple_files
    Boolean? specify_multiple_corresponding_fasta_files
    Boolean? specify_multiple_corresponding_output_files
    Boolean? print_ascii_quality
    Boolean? use_offset_converting
    Boolean? reformat_id_line
    Int fast_q_two_fast_a
  }
  command <<<
    bl_fastq2fasta \
      ~{fast_q_two_fast_a} \
      ~{if (specify_multiple_files) then "-i" else ""} \
      ~{if (specify_multiple_corresponding_fasta_files) then "-o" else ""} \
      ~{if (specify_multiple_corresponding_output_files) then "-q" else ""} \
      ~{if (print_ascii_quality) then "-a" else ""} \
      ~{if (use_offset_converting) then "-t" else ""} \
      ~{if (reformat_id_line) then "-s" else ""}
  >>>
  parameter_meta {
    specify_multiple_files: "specify multiple FASTQ input files"
    specify_multiple_corresponding_fasta_files: "specify multiple (corresponding) FASTA output files"
    specify_multiple_corresponding_output_files: "specify multiple (corresponding) QUAL output files"
    print_ascii_quality: "print ASCII quality scores (default: numerical scores)"
    use_offset_converting: "use OFFSET for converting ASCII quality scores (default: 33)"
    reformat_id_line: "reformat the ID line by replacing everything after a space, tab or / with\\nwith the specified SUFFIX\\n"
    fast_q_two_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}