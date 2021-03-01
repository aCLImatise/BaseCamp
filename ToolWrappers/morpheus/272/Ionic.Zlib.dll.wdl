version 1.0

task IonicZlibdll {
  command <<<
    Ionic_Zlib_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}