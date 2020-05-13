version 1.0

task ZrunCommand {
  input {
    String? argsArgs
  }
  command <<<
    zrun command \
      ~{argsArgs}
  >>>
}