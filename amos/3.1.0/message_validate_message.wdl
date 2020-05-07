version 1.0

task MessageValidateMessage {
  input {
    File? pathPath
  }
  command <<<
    message-validate message \
      ~{pathPath}
  >>>
}