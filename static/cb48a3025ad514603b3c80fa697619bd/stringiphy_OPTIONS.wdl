version 1.0

task StringiphyOPTIONS {
  input {
    String? exonsExonsGff
  }
  command <<<
    stringiphy OPTIONS \
      ~{exonsExonsGff}
  >>>
}