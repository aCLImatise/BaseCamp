version 1.0

task Zlibnetdll {
  command <<<
    zlib_net_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}