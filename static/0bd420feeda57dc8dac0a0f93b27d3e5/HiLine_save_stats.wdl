version 1.0

task HiLineSaveStats {
  input {
    File path
  }
  command <<<
    HiLine save-stats \
      ~{path}
  >>>
  parameter_meta {
    path: ""
  }
}