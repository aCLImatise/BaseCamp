version 1.0

task GcloudAppBrowse {
  input {
    Boolean? launch_browser
    String? service
  }
  command <<<
    gcloud app browse \
      ~{if (launch_browser) then "--launch-browser" else ""} \
      ~{if defined(service) then ("--service " +  '"' + service + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    launch_browser: "Launch a browser if possible. When disabled, only displays the URL.\\nEnabled by default, use --no-launch-browser to disable."
    service: "The service that should be opened. If not specified, use the default\\nservice. May be used in conjunction with --version."
  }
  output {
    File out_stdout = stdout()
  }
}