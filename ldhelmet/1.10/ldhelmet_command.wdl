version 1.0

task LdhelmetCommand {
  input {
    String? argsArgs
  }
  command <<<
    ldhelmet command \
      ~{argsArgs}
  >>>
}