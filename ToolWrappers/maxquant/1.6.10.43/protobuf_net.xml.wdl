version 1.0

task Protobufnetxml {
  command <<<
    protobuf_net_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}