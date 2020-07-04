version 1.0

task BlInterleave {
  input {
    Boolean? specify_multiple_files
    Boolean? specify_output_file
    Boolean? reformat_paired_read
    Int interleave
  }
  command <<<
    bl-interleave \
      ~{interleave} \
      ~{true="-i" false="" specify_multiple_files} \
      ~{true="-o" false="" specify_output_file} \
      ~{true="-s" false="" reformat_paired_read}
  >>>
  parameter_meta {
    specify_multiple_files: "specify multiple INPUT files"
    specify_output_file: "specify the OUTPUT file"
    reformat_paired_read: "reformat paired read ID lines by replacing everything after the first space, tab or / with the specified SEP followed by the input file number (e.g. '/' will use /1 as the ID suffix for the first input file, etc.)"
    interleave: ""
  }
}