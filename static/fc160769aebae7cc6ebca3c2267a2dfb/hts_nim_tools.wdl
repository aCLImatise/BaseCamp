version 1.0

task HtsNimTools {
  command <<<
    hts_nim_tools
  >>>
  runtime {
    docker: "quay.io/biocontainers/hts-nim-tools:0.3.11--hbeb723e_0"
  }
  output {
    File out_stdout = stdout()
  }
}