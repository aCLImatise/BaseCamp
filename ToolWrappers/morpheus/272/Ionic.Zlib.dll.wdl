version 1.0

task IonicZlibdll {
  command <<<
    Ionic_Zlib_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}