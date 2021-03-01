version 1.0

task Blinterleave {
  input {
    Boolean? specify_multiple_files
    File? specify_output_file
    Boolean? reformat_paired_read
    String interleave
  }
  command <<<
    bl_interleave \
      ~{interleave} \
      ~{if (specify_multiple_files) then "-i" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (reformat_paired_read) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_multiple_files: "specify multiple INPUT files"
    specify_output_file: "specify the OUTPUT file"
    reformat_paired_read: "reformat paired read ID lines by replacing everything after the first\\nspace, tab or / with the specified SEP followed by the input file number\\n(e.g. '/' will use /1 as the ID suffix for the first input file, etc.)"
    interleave: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}