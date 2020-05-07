version 1.0

task Graphdump {
  input {
    String? graphGraphDump
  }
  command <<<
    graphdump \
      ~{graphGraphDump}
  >>>
}