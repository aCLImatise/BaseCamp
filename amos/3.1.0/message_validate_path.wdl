version 1.0

task MessageValidatePath {
  input {
    String? messageMessage
    File? pathPath
  }
  command <<<
    message-validate path \
      ~{messageMessage} \
      ~{pathPath}
  >>>
}