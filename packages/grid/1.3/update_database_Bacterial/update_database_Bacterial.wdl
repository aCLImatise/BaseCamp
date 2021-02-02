version 1.0

task UpdateDatabaseBacterial {
  input {
    Boolean? _is_required
  }
  command <<<
    update_database Bacterial \
      ~{if (_is_required) then "-d" else ""}
  >>>
  parameter_meta {
    _is_required: "[option] is required"
  }
  output {
    File out_stdout = stdout()
  }
}