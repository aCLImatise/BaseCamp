version 1.0

task UpdateDatabaseFile {
  input {
    Boolean? _is_required
  }
  command <<<
    update_database file \
      ~{if (_is_required) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _is_required: "[option] is required"
  }
  output {
    File out_stdout = stdout()
  }
}