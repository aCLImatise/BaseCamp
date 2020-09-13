version 1.0

task ConvertNISTLibraryToTSVpy {
  command <<<
    convertNISTLibraryToTSV_py
  >>>
  output {
    File out_stdout = stdout()
  }
}