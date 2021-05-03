version 1.0

task SystemTextEncodingCodePagesdll {
  command <<<
    System_Text_Encoding_CodePages_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0"
  }
  output {
    File out_stdout = stdout()
  }
}