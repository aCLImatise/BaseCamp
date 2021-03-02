version 1.0

task TransDecoderLongOrfs {
  command <<<
    TransDecoder_LongOrfs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}