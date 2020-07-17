version 1.0

task Out2summary {
  input {
    File? filename_dot_out_vertical_line_directory
  }
  command <<<
    out2summary \
      ~{filename_dot_out_vertical_line_directory}
  >>>
  parameter_meta {
    filename_dot_out_vertical_line_directory: ""
  }
}