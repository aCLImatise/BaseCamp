version 1.0

task OgeneratematrixfilesfromENVIRONMENT {
  command <<<
    o_generate_matrix_files_from_ENVIRONMENT
  >>>
  output {
    File out_stdout = stdout()
  }
}