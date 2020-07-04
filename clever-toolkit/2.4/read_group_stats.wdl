version 1.0

task ReadGroupStats {
  input {
    String read_group_file
  }
  command <<<
    read-group-stats \
      ~{read_group_file}
  >>>
  parameter_meta {
    read_group_file: ""
  }
}