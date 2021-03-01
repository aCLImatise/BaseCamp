version 1.0

task Dxjobutilreporterror {
  input {
    String message
  }
  command <<<
    dx_jobutil_report_error \
      ~{message}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    message: "Error message for the job"
  }
  output {
    File out_stdout = stdout()
  }
}