version 1.0

task KwipStats {
  input {
    String? hashesHashes
  }
  command <<<
    kwip-stats \
      ~{hashesHashes}
  >>>
}