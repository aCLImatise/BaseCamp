version 1.0

task Kwip {
  input {
    String? hashesHashes
  }
  command <<<
    kwip \
      ~{hashesHashes}
  >>>
}