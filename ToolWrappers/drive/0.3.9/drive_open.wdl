version 1.0

task DriveOpen {
  input {
    Boolean? file_browser
    Boolean? web_browser
  }
  command <<<
    drive open \
      ~{if (file_browser) then "-file-browser" else ""} \
      ~{if (web_browser) then "-web-browser" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_browser: "open file with the local file manager (default true)"
    web_browser: "open file in default browser (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}