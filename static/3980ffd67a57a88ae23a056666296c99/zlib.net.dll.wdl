version 1.0

task Zlibnetdll {
  command <<<
    zlib_net_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}