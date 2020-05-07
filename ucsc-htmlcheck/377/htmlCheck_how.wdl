version 1.0

task HtmlCheckHow {
  input {
    String? urlUrl
  }
  command <<<
    htmlCheck how \
      ~{urlUrl}
  >>>
}