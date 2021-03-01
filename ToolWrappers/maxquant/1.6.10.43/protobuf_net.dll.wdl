version 1.0

task Protobufnetdll {
  command <<<
    protobuf_net_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}