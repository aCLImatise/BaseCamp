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
    docker: "quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0"
  }
  parameter_meta {
    message: "Error message for the job"
  }
  output {
    File out_stdout = stdout()
  }
}