version 1.0

task HtsNimTools {
  command <<<
    hts_nim_tools
  >>>
  output {
    File out_stdout = stdout()
  }
}