version 1.0

task Fermi2Unpack {
  input {
    String reads_dot_rld
    File? list_vertical_line_file
  }
  command <<<
    fermi2 unpack \
      ~{reads_dot_rld} \
      ~{list_vertical_line_file}
  >>>
  parameter_meta {
    reads_dot_rld: ""
    list_vertical_line_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}