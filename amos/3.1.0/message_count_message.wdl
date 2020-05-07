version 1.0

task MessageCountMessage {
  input {
    File? pathPath
  }
  command <<<
    message-count message \
      ~{pathPath}
  >>>
}