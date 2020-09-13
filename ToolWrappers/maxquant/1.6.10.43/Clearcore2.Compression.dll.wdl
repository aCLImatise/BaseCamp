version 1.0

task Clearcore2Compressiondll {
  command <<<
    Clearcore2_Compression_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}