version 1.0

task GcloudFeedbackOptional {
  input {
    File? log_file
  }
  command <<<
    gcloud feedback optional \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log_file: "Path to the log file from a prior gcloud run."
  }
  output {
    File out_stdout = stdout()
  }
}