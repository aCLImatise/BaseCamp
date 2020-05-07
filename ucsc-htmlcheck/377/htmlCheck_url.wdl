version 1.0

task HtmlCheckUrl {
  input {
    String? howHow
    String? urlUrl
  }
  command <<<
    htmlCheck url \
      ~{howHow} \
      ~{urlUrl}
  >>>
}