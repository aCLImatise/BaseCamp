version 1.0

task HalRenameGenomes {
  input {
    String hal_file
    String rename_file
  }
  command <<<
    halRenameGenomes \
      ~{hal_file} \
      ~{rename_file}
  >>>
  parameter_meta {
    hal_file: ""
    rename_file: ""
  }
}