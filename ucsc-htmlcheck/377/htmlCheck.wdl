version 1.0

task HtmlCheck {
  input {
    String how
    String url
  }
  command <<<
    htmlCheck \
      ~{how} \
      ~{url}
  >>>
  parameter_meta {
    how: ""
    url: ""
  }
}