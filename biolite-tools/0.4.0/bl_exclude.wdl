version 1.0

task Blexclude {
  input {
    Boolean? line_excludefile_truncated
    Boolean? invert_exclude_file
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_output_files
    String exclude
  }
  command <<<
    bl_exclude \
      ~{exclude} \
      ~{if (line_excludefile_truncated) then "-x" else ""} \
      ~{if (invert_exclude_file) then "-k" else ""} \
      ~{if (specify_multiple_input_files) then "-i" else ""} \
      ~{if (specify_multiple_output_files) then "-o" else ""}
  >>>
  parameter_meta {
    line_excludefile_truncated: "each line in EXCLUDE_FILE is truncated by a space or tab and\\nstored as an id to exclude"
    invert_exclude_file: "invert exclude file to keep entries"
    specify_multiple_input_files: "specify multiple INPUT files"
    specify_multiple_output_files: "specify multiple OUTPUT files"
    exclude: ""
  }
  output {
    File out_stdout = stdout()
  }
}