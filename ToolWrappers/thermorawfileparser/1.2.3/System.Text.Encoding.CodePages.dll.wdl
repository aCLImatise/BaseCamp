version 1.0

task SystemTextEncodingCodePagesdll {
  command <<<
    System_Text_Encoding_CodePages_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}