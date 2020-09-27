version 1.0

task Protobufnetdll {
  command <<<
    protobuf_net_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}