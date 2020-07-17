version 1.0

task BlExclude {
  input {
    Boolean? line_excludefile_truncated
    Boolean? invert_exclude_file
    Boolean? specify_multiple_input_files
    Boolean? specify_multiple_output_files
    String exclude
  }
  command <<<
    bl-exclude \
      ~{exclude} \
      ~{true="-x" false="" line_excludefile_truncated} \
      ~{true="-k" false="" invert_exclude_file} \
      ~{true="-i" false="" specify_multiple_input_files} \
      ~{true="-o" false="" specify_multiple_output_files}
  >>>
  parameter_meta {
    line_excludefile_truncated: "each line in EXCLUDE_FILE is truncated by a space or tab and stored as an id to exclude"
    invert_exclude_file: "invert exclude file to keep entries"
    specify_multiple_input_files: "specify multiple INPUT files"
    specify_multiple_output_files: "specify multiple OUTPUT files"
    exclude: ""
  }
}