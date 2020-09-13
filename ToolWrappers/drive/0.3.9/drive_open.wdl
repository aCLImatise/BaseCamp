version 1.0

task DriveOpen {
  input {
    Boolean? file_browser
    Boolean? id
    Boolean? web_browser
  }
  command <<<
    drive open \
      ~{if (file_browser) then "-file-browser" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (web_browser) then "-web-browser" else ""}
  >>>
  parameter_meta {
    file_browser: "open file with the local file manager (default true)"
    id: "open by id instead of path"
    web_browser: "open file in default browser (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}