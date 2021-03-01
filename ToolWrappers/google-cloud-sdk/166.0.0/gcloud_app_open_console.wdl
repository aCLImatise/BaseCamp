version 1.0

task GcloudAppOpenconsole {
  input {
    Boolean? logs
    String? service
  }
  command <<<
    gcloud app open_console \
      ~{if (logs) then "--logs" else ""} \
      ~{if defined(service) then ("--service " +  '"' + service + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    logs: "Open the log viewer instead of the App Engine dashboard."
    service: "The service to consider. If not specified, use the default service."
  }
  output {
    File out_stdout = stdout()
  }
}