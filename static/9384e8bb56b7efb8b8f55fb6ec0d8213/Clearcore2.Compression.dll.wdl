version 1.0

task Clearcore2Compressiondll {
  command <<<
    Clearcore2_Compression_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}