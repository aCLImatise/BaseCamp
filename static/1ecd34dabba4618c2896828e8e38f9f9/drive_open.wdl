version 1.0

task DriveOpen {
  input {
    Boolean idId
    Boolean webWebBrowser
  }
  command <<<
    drive open \
      ~{true="-id" false="" idId} \
      ~{true="-web-browser" false="" webWebBrowser}
  >>>
}