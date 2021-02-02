version 1.0

task Protobufnetxml {
  command <<<
    protobuf_net_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}