version 1.0

task SamStats {
  input {
    File? file_one
    File? file_two_dot_dot_dotfile_n
  }
  command <<<
    sam-stats \
      ~{file_one} \
      ~{file_two_dot_dot_dotfile_n}
  >>>
  parameter_meta {
    file_one: ""
    file_two_dot_dot_dotfile_n: ""
  }
}