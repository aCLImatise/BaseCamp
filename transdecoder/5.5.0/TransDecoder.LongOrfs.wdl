version 1.0

task TransDecoderLongOrfs {
  command <<<
    TransDecoder_LongOrfs
  >>>
  output {
    File out_stdout = stdout()
  }
}