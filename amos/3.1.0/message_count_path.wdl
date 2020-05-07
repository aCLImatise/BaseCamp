version 1.0

task MessageCountPath {
  input {
    String? messageMessage
    File? pathPath
  }
  command <<<
    message-count path \
      ~{messageMessage} \
      ~{pathPath}
  >>>
}