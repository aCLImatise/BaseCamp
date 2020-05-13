version 1.0

task Bamdump {
  input {
    String? bamBamDump
  }
  command <<<
    bamdump \
      ~{bamBamDump}
  >>>
}