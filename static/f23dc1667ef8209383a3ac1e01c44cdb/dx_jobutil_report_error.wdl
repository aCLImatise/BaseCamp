version 1.0

task DxJobutilReportError {
  input {
    String message
  }
  command <<<
    dx-jobutil-report-error \
      ~{message}
  >>>
  parameter_meta {
    message: ""
  }
}