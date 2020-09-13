version 1.0

task Blpairreads {
  input {
    Boolean? specify_input_files
    Boolean? specify_basename_output
    Boolean? use_sep_separator
    String pair_reads
  }
  command <<<
    bl_pair_reads \
      ~{pair_reads} \
      ~{if (specify_input_files) then "-i" else ""} \
      ~{if (specify_basename_output) then "-o" else ""} \
      ~{if (use_sep_separator) then "-s" else ""}
  >>>
  parameter_meta {
    specify_input_files: "specify multiple input FASTQ files"
    specify_basename_output: "specify the BASENAME for the output files"
    use_sep_separator: "use SEP as the separator in the ID line that precedes the pair number\\n[default ' ', for Casava 1.8 headers]"
    pair_reads: ""
  }
  output {
    File out_stdout = stdout()
  }
}