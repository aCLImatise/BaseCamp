version 1.0

task Pbdagcon {
  input {
    String? pbdPbdAgcOn
  }
  command <<<
    pbdagcon \
      ~{pbdPbdAgcOn}
  >>>
}