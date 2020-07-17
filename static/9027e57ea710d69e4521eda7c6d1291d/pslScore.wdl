version 1.0

task PslScore {
  input {
    File file_dot_psl
    String? more_files_dot_psl
  }
  command <<<
    pslScore \
      ~{file_dot_psl} \
      ~{more_files_dot_psl}
  >>>
  parameter_meta {
    file_dot_psl: ""
    more_files_dot_psl: ""
  }
}