version 1.0

task Blfasta2fastq {
  input {
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_corresponding_qual_files
    Boolean? specify_multiple_corresponding_output_files
    Boolean? scores_qual_file
    Boolean? use_offset_default
    Int fast_a_two_fast_q
  }
  command <<<
    bl_fasta2fastq \
      ~{fast_a_two_fast_q} \
      ~{if (specify_multiple_input_files) then "-i" else ""} \
      ~{if (specify_multiple_corresponding_qual_files) then "-q" else ""} \
      ~{if (specify_multiple_corresponding_output_files) then "-o" else ""} \
      ~{if (scores_qual_file) then "-a" else ""} \
      ~{if (use_offset_default) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_multiple_input_files: "specify multiple FASTA input files"
    specify_multiple_corresponding_qual_files: "specify multiple (corresponding) QUAL input files"
    specify_multiple_corresponding_output_files: "specify multiple (corresponding) FASTQ output files"
    scores_qual_file: "scores in QUAL file are ASCII (default: numerical scores)"
    use_offset_default: "use OFFSET for converting ASCII quality scores (default: 33)"
    fast_a_two_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}